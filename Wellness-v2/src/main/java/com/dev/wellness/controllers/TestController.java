package com.dev.wellness.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/v1")
public class TestController {
	@GetMapping("/all")
	public String allAccess() {
		return "Public Content.";
	}
	
	@GetMapping("/user")
	@PreAuthorize("hasRole('USER') or hasRole('ADMIN')")
	public String userAccess() {
		return "User Content.";
	}


	@GetMapping("/admin")
	@PreAuthorize("hasRole('ADMIN')")
	public String adminAccess() {
		return "Admin Board.";
	}

	// @GetMapping("/user/me")
    // @PreAuthorize("hasRole('ADMIN')")
    // public User getCurrentUser(@CurrentUser UserPrincipal userPrincipal) {
    //     return userRepository.findById(userPrincipal.getId())
    //             .orElseThrow(() -> new ResourceNotFoundException("User", "id", userPrincipal.getId()));
    // }
}
