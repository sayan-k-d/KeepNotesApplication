package com.todo;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Notes")
public class Note 
{
	@Id
	private int id;
	@Column(name="Title")
	private String title;
	@Column(name="Note_Content",length = 1500)
	private String content;
	@Column(name="Date")
	private Date addedDate;
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note(String title, String content, Date addedDate) 
	{
		super();
		this.id = new Random().nextInt(100000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
}
