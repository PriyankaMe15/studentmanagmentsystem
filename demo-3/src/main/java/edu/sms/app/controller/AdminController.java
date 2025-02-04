package edu.sms.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.sms.app.model.Student;
import edu.sms.app.servicei.StudentService;

@Controller
public class AdminController {
	@Autowired
	private StudentService ss;
        int a;
	@RequestMapping("/")
	public String preLogin() {
		return "login";
	}

	@RequestMapping("/login")
	public String onlogin(@RequestParam String username, @RequestParam String password, Model m) {
		if (username.equals("admin") && password.equals("admin123")) {
			
			List<Student> students = ss.getAllStudents();
			m.addAttribute("data", students);
			return "adminscreen";

		} 
		else {
			m.addAttribute("login_fail", "Enter valid login details.");
			return "login";
		}
	}
	
	@RequestMapping("/enroll_student")
	public String saveStudent(@ModelAttribute Student stu, Model m) {
		ss.saveStudentDetails(stu);
		List<Student> student = ss.getAllStudents();
		m.addAttribute("data", student);
		return "adminscreen";
	}

	@RequestMapping("/search")
	public String getBatchStudent(@RequestParam String batchNumber, Model m) {
		List<Student> result = ss.searchStudentByBatch(batchNumber);

		if (result.size() > 0) {
			m.addAttribute("data", result);
		} else {
			List<Student> student = ss.getAllStudents();
			m.addAttribute("data", student);
			m.addAttribute("message", "No Record are Available for the Batch'" + batchNumber + "'-----!!");
		}
		return "adminscreen";
	}

	@RequestMapping("/fees")
	public String onFees(@RequestParam int id, Model m) {
		Student st = ss.getSinglrStudent(id);
		m.addAttribute("st", st);
		return "fees";

	}

	@RequestMapping("/payfees")
	public String payFees(@RequestParam int studentId, @RequestParam double amount, Model m) {
		ss.updateStudentFees(studentId, amount);
		List<Student> student = ss.getAllStudents();
		m.addAttribute("data", student);
		return "adminscreen";

	}
	
	 @RequestMapping("/batch")
	    public String onBatch(@RequestParam int id, Model m) {
	        Student st = ss.getSinglrStudent(id);
	        if (st != null) {
	            m.addAttribute("st", st);
	            return "batch";
	        } else {
	            m.addAttribute("error", "Student not found with ID: " + id);
	            return "error";
	        }
	    }

	    @RequestMapping("/updatebatch")
	    public String updateBatch(@RequestParam int studentId, @RequestParam String batchNumber, Model m) {
	        ss.updateBatchNo(studentId, batchNumber);
	        List<Student> students = ss.getAllStudents();
	        m.addAttribute("data", students);
	        return "adminscreen";
	    }

	@RequestMapping("/remove")
	public String deleteStudent(@RequestParam("id") int id, Model m) {

		ss.deleteStudent(id);

		m.addAttribute("data", ss.getAllStudents());
		return "adminscreen";
	}

//	@RequestMapping("/paging")
//	public String pagingStudents(@RequestParam("pageNo") int pageNo, Model m) {
//
//		List<Student> list = ss.pagingData(pageNo);
//		m.addAttribute("data", list);
//		return "adminscreen";
//	}	

	
		
	}
