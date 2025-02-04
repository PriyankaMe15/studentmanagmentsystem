<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<style type="text/css">
.enroll {
	background-image: url("images/back.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

.heading {
	font-family: cursive;
	text-align: center;
	margin-bottom: 20px;
}

form {
	width: 400px
}

.view {
	background-image: url("images/bacj1.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<script type="text/javascript">
	function fees() {
		alert("Do You Want to Update");
		document.fn.action = "fees";
		document.fn.submit();
	}
	function batch(){
		alert("Do You Want to Shift Student Batch");
		document.fn.action = "batch";
		document.fn.submit();
	}
	function remove() {
		alert("Do You Want to Remove Student");
		document.fn.action = "remove";
		document.fn.submit();
	}
</script>
</head>
<body>
	<div class="card">
		<nav class="d-flex justify-content-between p-2 border border-primary">
			<img src="images/sms.webp" width="200px" height="70px">
			<div class="pt-2">
				<a href="#enroll">
					<button class="btn btn-outline-primary">Enroll Student</button>
				</a> <a href="#view">
					<button class="btn btn-outline-primary">View Student</button>
				</a> <a href="/">
					<button class="btn btn-outline-primary">Logout</button>
				</a>
			</div>
		</nav>
		<section class="vh-100 gradient-custom enroll mt-2" id="enroll">
			<div class="container  h-100">
				<div class="row justify-content-center h-100 w-75">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card shadow-2-strong card-registration mt-0"
							style="border-radius: 20px;">
							<div class="card-body mt-0">
								<h3 class="heading">Student Enrollment Form</h3>

								<form action="enroll_student">
									<div class="row ">
										<div class="col-md-6 mb-2">

											<div class="form-outline">
												<input type="text" id="firstName"
													class="form-control form-control-sm" name="studentfullName" />
												<label class="form-label" for="firstName">First Full
													Name</label>
											</div>

										</div>
										<div class="col-md-6 mb-2">

											<div class="form-outline">
												<input type="email" id="lastName"
													class="form-control form-control-sm" name="studentEmail" />
												<label class="form-label" for="lastName">Student
													Email</label>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-2 d-flex align-items-center">

											<div class="form-outline datepicker w-100">
												<input type="number" class="form-control form-control-sm"
													id="birthdayDate" name="studentAge" /> <label
													for="birthdayDate" class="form-label">Student Age</label>
											</div>
										</div>

										<div class="col-md-6 mb-2 pb-2">

											<div class="form-outline">
												<input type="tel" id="text"
													class="form-control form-control-sm"
													name="studentCollegeName" /> <label class="form-label"
													for="phoneNumber">Student Collage Name</label>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-2 pb-2">

											<div class="form-outline">
												<input type="number" id="emailAddress"
													class="form-control form-control-sm" name="feesPaid" /> <label
													class="form-label" for="emailAddress">Fees Paid</label>
											</div>

										</div>
										<div class="col-md-6 mb-2">

											<h6 class="mb-2 pb-1">Student Course :</h6>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="java" value="Java" checked /> <label
													class="form-check-label" for="java">Java</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="python" value="Python" /> <label
													class="form-check-label" for="python">Python</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="testing" value="Testing" /> <label
													class="form-check-label" for="testing">Testing</label>
											</div>

										</div>

									</div>

									<div class="row">
										<div class="col">

											<select class="select form-control-sm" name="batchMode">
												<option value="#" disabled>Select Batch Mode</option>
												<option value="Online">Online</option>
												<option value="Offline">Offline</option>

											</select> <label class="form-label select-label">Batch Mode</label>

										</div>
										<div class="col">

											<select class="select form-control-sm" name="batchNumber">
												<option value="#" disabled>Select Batch Number</option>
												<option value="FDJ-160">FDJ-160</option>
												<option value="REG-160">REG-160</option>
												<option value="FDJ-161">FDJ-161</option>
												<option value="REG-161">REG-162</option>
												<option value="FDJ-162">FDJ-162</option>
												<option value="REG-162">REG-162</option>
												<option value="FDJ-163">FDJ-163</option>
												<option value="REG-163">REG-163</option>
												<option value="FDJ-184">FDJ-184</option>
												<option value="REG-184">REG-184</option>
												<option value="FDJ-185">FDJ-185</option>
												<option value="REG-185">REG-185</option>
											</select> <label class="form-label select-label">Batch Number</label>

										</div>
									</div>

									<div class="mt-2 pt-2 d-flex justify-content-center">
										<input class="btn btn-primary btn-lg" type="submit"
											value="Submit" />
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="view" style="height: 530px" id="view">
			<h1 class="text-center">Student Details..!</h1>
			<div class="text-center w-100">
				<form action="search" class="w-100">
					<select class="select form-control-sm border border-primary"
						name="batchNumber">
						<option value="#" slected>Select Batch Number</option>
						<option value="#" disabled>Select Batch Number</option>
												<option value="FDJ-160">FDJ-160</option>
												<option value="REG-160">REG-160</option>
												<option value="FDJ-161">FDJ-161</option>
												<option value="REG-161">REG-162</option>
												<option value="FDJ-162">FDJ-162</option>
												<option value="REG-162">REG-162</option>
												<option value="FDJ-163">FDJ-163</option>
												<option value="REG-163">REG-163</option>
												<option value="FDJ-184">FDJ-184</option>
												<option value="REG-184">REG-184</option>
												<option value="FDJ-185">FDJ-185</option>
												<option value="REG-185">REG-185</option>
					</select>
					<button class="btn btn-outline-primary mb-1">Search</button>
				</form>
				<marquee>
					<h1 style="color: red;">${message }</h1>
				</marquee>
			</div>

			<form name="fn" method="post">
				<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
	margin: 0;
	padding: 20px;
}

form {
	width: 90%;
	margin: 20px auto;
	background: #ffffff;
	border: 1px solid #dee2e6;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	padding: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	text-align: left;
}

thead {
	background-color: #007bff;
	color: white;
}

th, td {
	padding: 12px 15px;
	border: 1px solid #dee2e6;
}

th {
	text-align: center;
	font-weight: bold;
}

td {
	font-size: 14px;
	text-align: center;
}

.btn-group .btn {
	margin: 2px;
	font-size: 12px;
}

.btn-outline-success:hover {
	background-color: #28a745;
	color: white;
}

.btn-outline-primary:hover {
	background-color: #007bff;
	color: white;
}

.btn-outline-danger:hover {
	background-color: #dc3545;
	color: white;
}

@media ( max-width : 768px) {
	table {
		font-size: 12px;
	}
	th, td {
		padding: 8px 10px;
	}
	.btn-group .btn {
		font-size: 10px;
		padding: 5px;
	}
}
</style>

				<table class="table table-hover" style="font-size: small;">
					<thead>
						<tr>
							<th>ID</th>
							<th>Student Name</th>
							<th>Student Email</th>
							<th>Age</th>
							<th>College Name</th>
							<th>Course Name</th>
							<th>Batch No</th>
							<th>Mode</th>
							<th>Fees Received</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${data}" var="s">
							<tr>
								<td>${s.studentId}</td>
								<td>${s.studentfullName}</td>
								<td>${s.studentEmail}</td>
								<td>${s.studentAge}</td>
								<td>${s.studentCollegeName}</td>
								<td>${s.studentCourse}</td>
								<td>${s.batchNumber}</td>
								<td>${s.batchMode}</td>
								<td>${s.feesPaid}</td>
								<td><input type="radio" name="id" value="${s.studentId}">
								</td>
								<td>
									<div class="btn-group btn-group-sm" role="group"
										aria-label="Actions">
										<button type="button" class="btn btn-outline-success"
											onclick="fees()">Pay-Fees</button>
										<button type="button" class="btn btn-outline-primary"
											onclick="batch()">Shift-Batch</button>
										<button type="button" class="btn btn-outline-danger"
											onclick="remove()">Remove</button>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="paging?pageNo=0">1</a></li>
						<li class="page-item"><a class="page-link" href="paging?pageNo=1">2</a></li>
						<li class="page-item"><a class="page-link" href="paging?pageNo=2">3</a></li>
						<li class="page-item"><a class="page-link" href="paging?pageNo=3">Next</a>
						</li>
					</ul>
				</nav>
			</form>

		</section>

	</div>

</body>
</html>