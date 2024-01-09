/**
 * 
 */

console.log("comments Module 댓글 모듈");

var commentService = (function() {


	function add(comments, callback, error) {

		console.log(" 댓글 등록");
		//댓글 등록 
		$.ajax({
			type: 'post',
			url: '/comments/new',
			data: JSON.stringify(comments),
			contentType: "application/json; charset=utf-8",
			success: function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error: function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}

		})
	} //ajax 
	
	//댓글 리스트 조회 
	function getList(param, callback, error) {
		var bno = param.bno;
		var page = param.page || 1;

		$.getJSON("/comments/pages/" + bno + "/" + page + ".json", function(data) {
			if (callback) {
				callback(data);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}

		});

	}// getList

	//댓글 삭제 
	function remove(cno, callback, error) {
		$.ajax({
			type: 'delete',
			url: '/comments/' + cno,
			success: function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error: function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	} //remove

	//댓글 수정
	function update(comments, callback, error) {
		$.ajax({
			type: 'put',
			url: '/comments/' + comments.cno,
			data: JSON.stringify(comments),
			contentType: "application/json; charset=utf-8",
			success: function(Result, status, xhr) {
				if (callback) {
					callback(Result);
				}
			},
			error: function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});

	}//update

	//댓글 조회 
	function get(cno, callback, error) {
		$.get("/comments/" + cno + ".json", function(result) {
			if (callback) {
				callback(result);
			}


		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}

		});

	}
	//작성시간 년/월/일 시:분:초 
	function displayTime(timeValue) {
		var today = new Date();
		var gap = today.getTime() - timeValue;
		var dateObj = new Date(timeValue);
		var str = "";
		if (gap < (1000 * 60 * 60 * 24)) {
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			return [(hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss].join('');
		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth()+1;
			var dd = dateObj.getDate();
			return [yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd].join('');
		}
	};

	return {
		name:"TestAAAA",
		add: add,
		getList: getList,
		remove: remove,
		update: update,
		get: get,
		displayTime: displayTime
	};

})();
