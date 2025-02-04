package edu.sms.app.servicei;

import java.util.List;

import edu.sms.app.model.Student;

public interface StudentService {
	
	public void saveStudentDetails(Student st);

	public List<Student> getAllStudents();

	public List<Student> searchStudentByBatch(String batchNumber);

	public Student getSinglrStudent(int id);

	public void updateStudentFees(int studentId, double amount);

	public void updateBatchNo(int studentId, String batchNumber);

	public void deleteStudent(int id);

	//public List<Student> pagingData(int pageNo);
	

}


