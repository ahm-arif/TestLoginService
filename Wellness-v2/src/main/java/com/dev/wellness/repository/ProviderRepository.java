package com.dev.wellness.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dev.wellness.models.AuthProvider;
import com.dev.wellness.models.Provider;

@Repository
public interface ProviderRepository extends JpaRepository<Provider, Long> {
	Optional<Provider> findByName(AuthProvider name);
}
