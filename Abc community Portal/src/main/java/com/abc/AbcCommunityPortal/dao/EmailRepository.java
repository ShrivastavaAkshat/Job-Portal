package com.abc.AbcCommunityPortal.dao;
import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.AbcCommunityPortal.dto.Emails;

public interface EmailRepository extends JpaRepository <Emails, Integer>{

}

