<?php 


class Comment extends Db_object {


	protected static $db_table = "comments";
	protected static $db_table_fields = array("photo_id", "author", "body", "date_posted");
	public $id;
	public $photo_id;
	public $author;
	public $body;
	public $date_posted;




	public static function create_comment($photo_id, $author="John", $body="") {

		if (!empty($photo_id) && !empty($author) && !empty($body)) {
			
			$comment = new Comment();

			$comment->photo_id = (int)$photo_id;
			$comment->author = $author;
			$comment->body = $body;
			$comment->date_posted = date("Y-m-d H:i:s");

			return $comment;

		} else {

			return false;
		}



	}



	public static function find_the_comments($photo_id=0) {

		global $database;

		$sql = "SELECT * FROM " . self::$db_table;
		$sql .= " WHERE photo_id=" . $database->escape_string($photo_id);
		$sql .= " ORDER by id ASC";

		return self::find_by_query($sql);
	}


	public static function comment_date($comment_id) {

		$comment = Comment::find_by_id($comment_id);

		return ($comment->date_posted!="") ? date('F j, Y, g:i a', strtotime($comment->date_posted)) : date('F j, Y, g:i a', strtotime(date("Y-m-d H:i:s")));

	}



} // End of Class Comment



