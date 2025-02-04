package edu.sms.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.sms.app.model.Student;

public interface StudentRepository extends JpaRepository<Student,Integer> {
	public List<Student> findByBatchNumber(String batchNumber);

}
