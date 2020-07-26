package com.dev.wellness.models;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

// @Entity
// @Table(	name = "users", 
// 		uniqueConstraints = { 
// 			@UniqueConstraint(columnNames = "username"),
// 			@UniqueConstraint(columnNames = "email") 
// 		})
// public class User {
// 	@Id
// 	@GeneratedValue(strategy = GenerationType.IDENTITY)
// 	private Long id;

// 	@NotBlank
// 	@Size(max = 20)
// 	private String username;

// 	@NotBlank
// 	@Size(max = 50)
// 	@Email
// 	private String email;

// 	@NotBlank
// 	@Size(max = 120)
// 	private String password;

// 	@ManyToMany(fetch = FetchType.LAZY)
// 	@JoinTable(	name = "user_roles", 
// 				joinColumns = @JoinColumn(name = "user_id"), 
// 				inverseJoinColumns = @JoinColumn(name = "role_id"))
// 	private Set<Role> roles = new HashSet<>();

// 	public User() {
// 	}

// 	public User(String username, String email, String password) {
// 		this.username = username;
// 		this.email = email;
// 		this.password = password;
// 	}

// 	public Long getId() {
// 		return id;
// 	}

// 	public void setId(Long id) {
// 		this.id = id;
// 	}

// 	public String getUsername() {
// 		return username;
// 	}

// 	public void setUsername(String username) {
// 		this.username = username;
// 	}

// 	public String getEmail() {
// 		return email;
// 	}

// 	public void setEmail(String email) {
// 		this.email = email;
// 	}

// 	public String getPassword() {
// 		return password;
// 	}

// 	public void setPassword(String password) {
// 		this.password = password;
// 	}

// 	public Set<Role> getRoles() {
// 		return roles;
// 	}

// 	public void setRoles(Set<Role> roles) {
// 		this.roles = roles;
// 	}
// 		private String imageUrl;

    
//     @Column(nullable = false)
//     private Boolean emailVerified = false;

   
//     @Enumerated(EnumType.STRING)
//     private AuthProvider provider;

//     private String providerId;
// 		    public String getImageUrl() {
//         return imageUrl;
//     }

//     public void setImageUrl(String imageUrl) {
//         this.imageUrl = imageUrl;
//     }

//     public Boolean getEmailVerified() {
//         return emailVerified;
//     }

//     public void setEmailVerified(Boolean emailVerified) {
//         this.emailVerified = emailVerified;
//     }

// 	public AuthProvider getProvider() {
//         return provider;
//     }

//     public void setProvider(AuthProvider provider) {
//         this.provider = provider;
//     }

//     public String getProviderId() {
//         return providerId;
//     }

//     public void setProviderId(String providerId) {
//         this.providerId = providerId;
//     }
// }
@Entity
@Table(	name = "appuser", 
		uniqueConstraints = { 
			@UniqueConstraint(columnNames = "username"),
			@UniqueConstraint(columnNames = "email") 
		})
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	// @NotBlank
	// @Size(max = 20)
	// private String username;

	@Column(nullable = false)
	private String username;

    @Email
    @Column(nullable = false)
    private String email;
	// @NotBlank
	// @Size(max = 50)
	// @Email
	// private String email;

	
    @JsonIgnore
    private String password;
	// @NotBlank
	// @Size(max = 120)
	// private String password;

	private String imageUrl;

    
    @Column(nullable = false)
    private Boolean emailVerified = false;

   
    @Enumerated(EnumType.STRING)
    private AuthProvider provider;

    private String providerId;


@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(	name = "role_appuser", 
				joinColumns = @JoinColumn(name = "appuser_id"), 
				inverseJoinColumns = @JoinColumn(name = "role_id"))

	private Set<Role> roles = new HashSet<>();

	public User() {
	}

	public User(String username, String email, String password) {
		this.username = username;
		this.email = email;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public Boolean getEmailVerified() {
        return emailVerified;
    }

    public void setEmailVerified(Boolean emailVerified) {
        this.emailVerified = emailVerified;
    }

	public AuthProvider getProvider() {
        return provider;
    }

    public void setProvider(AuthProvider provider) {
        this.provider = provider;
    }

    public String getProviderId() {
        return providerId;
    }

    public void setProviderId(String providerId) {
        this.providerId = providerId;
    }
}
