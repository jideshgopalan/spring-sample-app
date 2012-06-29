package com.jidesh.domain;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;

import org.springframework.data.jpa.domain.AbstractPersistable;
import org.springframework.security.core.GrantedAuthority;

@Data
@EqualsAndHashCode(callSuper=true)
@Entity
public class Role extends AbstractPersistable<Long> implements GrantedAuthority {

	private static final long serialVersionUID = 1L;


	private String roleName;

	@ManyToOne
	@JoinColumn(name = "userid", insertable = false, updatable = false)
	private User user;

	@Transient
	public String getAuthority() {
		return roleName;
	}
	
	@Override
	public String toString() {
		return roleName;
	}

}
