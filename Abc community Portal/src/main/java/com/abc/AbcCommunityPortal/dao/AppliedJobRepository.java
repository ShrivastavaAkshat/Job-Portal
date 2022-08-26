package com.abc.AbcCommunityPortal.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abc.AbcCommunityPortal.dto.AppliedJob;

@Repository
public interface AppliedJobRepository extends JpaRepository<AppliedJob , Integer>{

}
