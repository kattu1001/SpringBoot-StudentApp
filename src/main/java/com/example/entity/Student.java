package com.example.entity;

import lombok.*;

import javax.persistence.*;

import javax.validation.constraints.*;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter
@Setter
@Entity
public class Student {

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer sid;
    @Column
	@NotEmpty(message = "Please enter your name")
    private String sname;
    @Column
	@Email(regexp = "[a-z0-9.]+@[a-z]+\\.[a-z]{2,3}",message = "Please enter valid email")
    private String semail;
    @Column
	@NotNull(message = "Enter your Marks")
	@Min(1)@Max(100)
    private float smarks;
	
    public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public float getSmarks() {
		return smarks;
	}
	public void setSmarks(float smarks) {
		this.smarks = smarks;
	}
	
	
}
