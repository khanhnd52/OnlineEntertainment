<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col mt-3">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="videoEditing-tab"
				data-toggle="tab" data-target="#videoEditing" type="button"
				role="tab" aria-controls="videoEditing" aria-selected="true">Video
				Editing</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="videoList-tab" data-toggle="tab"
				data-target="#videoList" type="button" role="tab"
				aria-controls="videoList" aria-selected="false">Video List</button>
		</li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="videoEditing"
			role="tabpanel" aria-labelledby="videoEditing-tab">
			<form action="" method="post">
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="col-3">
								<div class="border p-3">
									<img src="..//images/desktop.svg" alt="" class="img-fluid">
								</div>
							</div>
							<div class="col-9">
								<div class="form-group">
									<label for="youtubeId">Youtube ID</label> <input type="text"
										class="form-control" name="youtubeId" id="youtubeId"
										aria-describedby="youtubeHid" placeholder="Youtube ID">
									<small id="youtubeHid" class="form-text text-muted">Youtube
										id is required</small>
								</div>
								<div class="form-group">
									<label for="videoTitle">Video Title</label> <input type="text"
										class="form-control" name="videoTitle" id="videoTitle"
										aria-describedby="helpId" placeholder="Video Title"> <small
										id="videoTitle" class="form-text text-muted">Video
										title is required</small>
								</div>
								<div class="form-group">
									<label for="viewCount">View Count</label> <input type="text"
										class="form-control" name="viewCount" id="viewCount"
										aria-describedby="viewCountHid" placeholder="View count">
									<small id="viewCountHid" class="form-text text-muted">View
										count is required</small>
								</div>
								<div class="form-check form-check-inline">
									<label><input type="radio" class="form-check-input"
										value="true" name="status" id="status">Active</label> <label><input
										type="radio" class="form-check-input" value="false"
										name="status" id="status">Inactive</label>
								</div>
							</div>

						</div>
					</div>
					<div class="row">
						<div class="col">
							<label for="description">Description</label>
							<textarea name="description" id="description" cols="30" rows="4"
								class="form-control"></textarea>
						</div>
					</div>
					<div class="card-footer text-muted">
						<button class="btn btn-primary">Create</button>
						<button class="btn btn-warning">Update</button>
						<button class="btn btn-danger">Delete</button>
						<button class="btn btn-info">Reset</button>

					</div>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="videoList" role="tabpanel"
			aria-labelledby="videoList-tab">
			<table class="table table-strip">
				<tr>
					<td>Youtube ID</td>
					<td>Video Title</td>
					<td>View Count</td>
					<td>Status</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>YTT</td>
					<td>Java</td>
					<td>105</td>
					<td>Active</td>
					<td><a href=""><i class="fa fa-edit" aria-hidden="true"></i>
							Edit</a> <a href=""><i class="fa fa-trash" aria-hidden="true"></i>
							Delete</a></td>
				</tr>
			</table>
		</div>
	</div>
</div>