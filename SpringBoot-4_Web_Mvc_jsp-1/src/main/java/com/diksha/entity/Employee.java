package com.diksha.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "employee")
@Data
public class Employee {

	@Id
	private Integer id;
	
	private String name;
	
	private String dep;
	
	private Double salary;
	
	private String gender;
	
	private String address;
}
