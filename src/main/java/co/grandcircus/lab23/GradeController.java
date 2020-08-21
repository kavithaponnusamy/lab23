package co.grandcircus.lab23;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class GradeController {
	
	// Autowired tells spring to fill in the dao variable automatically
	// when the application starts.
	@Autowired
	private GradeDao dao;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/grades";
	}
	@RequestMapping("/grades")
	public String list(Model model) {
		List<Grade> grades = dao.findAll();
		double overAllPercentage=0;
		double totalScore=0;
		double totalTotal=0;
		for (int i=0; i<grades.size(); i++) {
			totalScore+=grades.get(i).getScore();
			totalTotal+=grades.get(i).getTotal();
		}
		overAllPercentage = (totalScore/totalTotal)*100;
		model.addAttribute("grades", grades);
		model.addAttribute("overAllPercentage", overAllPercentage);
		return "home";
	}
	
	@RequestMapping("/findbyid")
	public String detail(Model model, @RequestParam("id") Integer id) {
		Grade grade = dao.findById(id);
		model.addAttribute("grade", grade);
		return "findbyid";
	}
	@RequestMapping("/grades/add-form")
	public String showAdd() {		
		return "add-form";
	}

	@PostMapping("/grades/add-form")
	public String submitAdd(Grade grade,Model model) {			
		dao.create(grade);
		model.addAttribute("name",grade.getName());
		model.addAttribute("type",grade.getType());
		model.addAttribute("score",grade.getScore());
		model.addAttribute("total",grade.getTotal());
		return "add-result";
	}

	@RequestMapping("/delete-form")
	public String showDeleteForm(Model model, @RequestParam("id") Integer id, @RequestParam("name") String name) {
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		return "delete-form";
	}
	
	@RequestMapping("/grades/delete")
	public String remove(@RequestParam("id") Integer id) {
		dao.delete(id);
		return "redirect:/grades";
	}
	
}