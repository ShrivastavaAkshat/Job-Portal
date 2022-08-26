package com.abc.AbcCommunityPortal.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.AbcCommunityPortal.dto.Jobs;

public interface JobRepository extends JpaRepository <Jobs, Integer>{

	Jobs getByAuthor(String author);
}