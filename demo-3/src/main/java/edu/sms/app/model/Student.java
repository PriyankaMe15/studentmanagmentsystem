package edu.sms.app.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int StudentId;
	private String studentfullName;
	private String studentEmail;
	private int studentAge;
	private String StudentCollegeName;
	private String studentCourse;
	private String batchNumber;
	private String batchMode;
	private double feesPaid;

	public int getStudentId() {
		return StudentId;
	}

	public void setStudentId(int studentId) {
		StudentId = studentId;
	}

	public String getStudentfullName() {
		return studentfullName;
	}

	public void setStudentfullName(String studentfullName) {
		this.studentfullName = studentfullName;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public int getStudentAge() {
		return studentAge;
	}

	public void setStudentAge(int studentAge) {
		this.studentAge = studentAge;
	}

	public String getStudentCollegeName() {
		return StudentCollegeName;
	}

	public void setStudentCollegeName(String studentCollegeName) {
		StudentCollegeName = studentCollegeName;
	}

	public String getStudentCourse() {
		return studentCourse;
	}

	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
	}

	public String getBatchNumber() {
		return batchNumber;
	}

	public void setBatchNumber(String batchNumber) {
		this.batchNumber = batchNumber;
	}

	public String getBatchMode() {
		return batchMode;
	}

	public void setBatchMode(String batchMode) {
		this.batchMode = batchMode;
	}

	public double getFeesPaid() {
		return feesPaid;
	}

	public void setFeesPaid(double feesPaid) {
		this.feesPaid = feesPaid;
	}

}
