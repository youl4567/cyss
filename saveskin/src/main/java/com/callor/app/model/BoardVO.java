package com.callor.app.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardVO {

	public int b_num;			// 게시글 번호
	public String b_title;		// 제목
	public String b_content;	// 내용
	public int b_hit;			// 조회수
	
}
