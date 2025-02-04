package edu.sms.app.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.sms.app.model.Student;
import edu.sms.app.repository.StudentRepository;
import edu.sms.app.servicei.StudentService;

@Service
public class StudentServiceimpl implements StudentService {
	@Autowired 
	private StudentRepository sr;

	@Override
	public void saveStudentDetails(Student st) {
		sr.save(st);
	}

	@Override
	public List<Student> getAllStudents() {
		return sr.findAll();
		
	}

	@Override
	public List<Student> searchStudentByBatch(String batchNumber) {
		List<Student> batchStudent=sr.findByBatchNumber(batchNumber);
		return batchStudent;

	}

	@Override
	public Student getSinglrStudent(int id) {
		Optional<Student> list = sr.findById(id);
		return list.get();
	}

	@Override
	public void updateStudentFees(int studentId, double amount) {
		Optional<Student> list = sr.findById(studentId);
		Student st=list.get();
		
		st.setFeesPaid(st.getFeesPaid()+amount);
		sr.save(st);
		
	}

	@Override
	public void updateBatchNo(int studentId, String batchNumber) {
		Optional<Student> optionalStudent = sr.findById(studentId);
        if (optionalStudent.isPresent()) {
            Student student = optionalStudent.get();
            student.setBatchNumber(batchNumber);
            sr.save(student); // Save the updated student back to the database
        } else {
            throw new IllegalArgumentException("Student with ID " + studentId + " not found");
        }
		
	}

	@Override
	public void deleteStudent(int id) {
		sr.deleteById(id);
		
	}

//	@Override
//	public List<Student> pagingData(int pageNo) {
//		Pageable page=PageRequest.of(pageNo, 3,Sort.by("studentId").ascending());         
//		  
//		List<Student>	list   = sr.findAll(page).getContent();
//			
//			return list;
//	}


}
