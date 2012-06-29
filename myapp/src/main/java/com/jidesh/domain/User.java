package com.jidesh.domain;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;

import org.springframework.data.jpa.domain.AbstractPersistable;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


/**
 * Sample user class.
 * 
 * @author Oliver Gierke
 */
@Data
@EqualsAndHashCode(callSuper=true)
@Entity
@NamedQuery(name = "User.findByTheUsersName", query = "from User u where u.username = ?")
public class User extends AbstractPersistable<Long> implements UserDetails {

    private static final long serialVersionUID = -2952735933715107252L;
    

    @Column(name="username", unique = true)
    private String username;

    @Column(name="firstname")
    private String firstname;
    
    @Column(name="lastname")
    private String lastname;

	private String password;

	@Column(name="accountNonExpired", columnDefinition="Boolean default true")
	private boolean accountNonExpired;

	@Column(name="accountNonLocked", columnDefinition="Boolean default true")
	private boolean accountNonLocked;

	@Column(name="credentialsNonExpired", columnDefinition="Boolean default true")
	private boolean credentialsNonExpired;

	@Column(name="enabled", columnDefinition="Boolean default true")
	private boolean enabled;

	@OneToMany(fetch=FetchType.EAGER)
	@JoinColumn(name="userid")
	private Collection<Role> roles;
	

    public User() {

        this(null);
    }


    /**
     * Creates a new user instance.
     */
    public User(Long id) {

        this.setId(id);
    }
       
 
	@Transient
	public Collection<GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority>authorities = new ArrayList<GrantedAuthority>();
		for (GrantedAuthority grantedAuthority : this.roles) {
			authorities.add(grantedAuthority);
		}
		return authorities;
	}

}
