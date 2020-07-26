package com.dev.wellness.models;

import javax.persistence.*;

@Entity
@Table(name = "provider")
public class Provider {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(length = 100)
	private String providerId;

	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	private AuthProvider name;




	public Provider() {

	}

	public Provider(AuthProvider name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public AuthProvider getName() {
		return name;
	}

	public void setName(AuthProvider name) {
		this.name = name;
	}

	public String getProviderId() {
	return providerId;
}

	public void setProviderId(String providerId) {
		this.providerId = providerId;
	}
}