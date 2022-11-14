<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="card">
	<div class="card-header">
		<h3 class="card-title">DataTable with default features</h3>
	</div>
	<div class="card-body">
		<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
			<div class="row">
				<div class="col-sm-12">
					<table id="example1"
						class="table table-bordered table-striped dataTable dtr-inline"
						aria-describedby="example1_info">
						<thead>
							<tr>
								<th class="sorting sorting_asc" tabindex="0"
									aria-controls="example1" rowspan="1" colspan="1"
									aria-label="bookId: activate to sort column descending"
									aria-sort="ascending">BookId</th>
								<th class="sorting" tabindex="0" aria-controls="example1"
									rowspan="1" colspan="1"
									aria-label="Title: activate to sort column ascending">Title</th>
								<th class="sorting" tabindex="0" aria-controls="example1"
									rowspan="1" colspan="1"
									aria-label="Category: activate to sort column ascending">Category</th>
								<th class="sorting" tabindex="0" aria-controls="example1"
									rowspan="1" colspan="1"
									aria-label="Price: activate to sort column ascending">Price</th>
								<th class="sorting sorting_asc" tabindex="0"
									aria-controls="example1" rowspan="1" colspan="1"
									aria-label="content activate to sort column descending"
									aria-sort="ascending">content</th>
								<th class="sorting" tabindex="0" aria-controls="example1"
									rowspan="1" colspan="1"
									aria-label="Insert Date: activate to sort column ascending">Insert
									Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="bookVO" items="${bookVOList}" varStatus="stat">
								<c:if test="${stat.count%2!=0}">
									<tr class="odd">
								</c:if>
								<c:if test="${stat.count%2==0}">
									<tr class="even">
								</c:if>
								<td class="dtr-control sorting_1" tabindex="0"><a
									href="/book/detail?bookId=${bookVO.bookId}">
										${bookVO.bookId}</a></td>
								<td>${bookVO.title}</td>
								<td>${bookVO.category}</td>
								<td>${bookVO.price}</td>
								<td>${bookVO.content}</td>
								<td>${bookVO.insertDate}</td>

							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<th rowspan="1" colspan="1">BookId</th>
								<th rowspan="1" colspan="1">Title</th>
								<th rowspan="1" colspan="1">Category</th>
								<th rowspan="1" colspan="1">Price</th>
								<th rowspan="1" colspan="1">content</th>
								<th rowspan="1" colspan="1">Insert Date</th>
							</tr>
						</tfoot>

					</table>
				</div>

			</div>
			<div>
				<input type="button" class="btn btn-block btn-outline-info btn-flat"
					style="width: 100px; float: right;"
					onclick="location.href='/book/insert'" value="추가">
			</div>
		</div>
	</div>
</div>