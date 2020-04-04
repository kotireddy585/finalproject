package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "patient")
public class Patient 
{
	@Id
	@NotEmpty(message="* Mobile Number is Required")
	@Size(min=10,max=10,message="* Length must be 10")
	private String mobile;
	
	
	@Column
	@NotEmpty(message="* Name is Required")
	private String name;
	
	@Column
	@NotEmpty(message="* Should not be empty")
	@Size(min=8,message="* Must be 8 characters")
	private String password;
	
	@Column
	@NotEmpty(message="* Email is required")
	private String email;
	
	@Column
	@NotNull(message="* Proper Age")
	private int age;

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}	
}
