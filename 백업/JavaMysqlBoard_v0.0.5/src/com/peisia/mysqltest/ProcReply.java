package com.peisia.mysqltest;

import java.sql.SQLException;

import com.peisia.c.board.display.Disp;
import com.peisia.util.Cw;
import com.peisia.util.Db;

public class ProcReply {

	/*
	 * 댓글 리스트 출력하는 함수
	 */
	static public void list(int oriNo) {
		Disp.replyBar();
		String sql = "select * from board where b_reply_ori="+oriNo;
		try {
			Cw.wn("전송한sql문:"+sql);
			Db.result = Db.st.executeQuery(sql);
			while(Db.result.next()) {	// 결과를 하나씩 빼기. 더 이상 없으면(행 수가 끝나면) false 리턴됨.
				String b_reply_text = Db.result.getString("b_reply_text");
				Cw.wn(b_reply_text);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}

}
