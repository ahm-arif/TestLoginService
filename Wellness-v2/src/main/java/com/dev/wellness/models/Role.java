package com.dev.wellness.models;

import javax.persistence.*;
import java.util.Date;
import java.sql.Timestamp;

@Entity
@Table(name = "roles")
public class Role {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	private ERole name;



	// @CreatedDate
	// @Temporal(TemporalType.TIMESTAMP)
	// @Column(name = "create_date")
	// private Date createDate;

	// @LastModifiedDate
	// @Temporal(TemporalType.TIMESTAMP)
	// @Column(name = "updated_date")
	// private Date modifyDate;

	public Role() {

	}

	public Role(ERole name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ERole getName() {
		return name;
	}

	public void setName(ERole name) {
		this.name = name;
	}
}