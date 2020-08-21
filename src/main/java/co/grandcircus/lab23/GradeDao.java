  
package co.grandcircus.lab23;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;



// Repository annotation allows spring to create a RoomsDao and use
// it with @Autowired in our controller
@Repository
public class GradeDao {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public List<Grade> findAll() {
		String sql = "SELECT * FROM grades";
		// .query returns a List
		// RowMapper converts the SLQ table results to Room objects, matching the field names
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Grade.class));
	}
	
	public Grade findById(Integer id) {
		// ? leaves a "blank" called a parameter to fill in later
		String sql = "SELECT * FROM grades WHERE id = ?";
		// .queryForObject returns a single object
		// the value(s) for ? params are specified at the end...
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Grade.class), id);
	}
	
	public void create(Grade grade) {
		String sql = "INSERT INTO grades (name, type,score,total,percentage) VALUES (?, ?, ?,?,?)";
		// .update is used for any modification (INSERT, UPDATE, DELETE)
		// the value(s) for ? params are specified at the end...
		jdbc.update(sql, grade.getName(), grade.getType(), grade.getScore(),grade.getTotal(),(grade.getScore()/grade.getTotal())*100);
	}
	
	/*public void update(Room room) {
		String sql = "UPDATE room SET name = ?, max_capacity = ?, available = ? WHERE id = ?";
		jdbc.update(sql, room.getName(), room.getMaxCapacity(),
				room.getAvailable(), room.getId());
	}*/
	
	public void delete(Integer id) {
		String sql = "DELETE FROM grades WHERE id = ?";
		jdbc.update(sql, id);
	}

}