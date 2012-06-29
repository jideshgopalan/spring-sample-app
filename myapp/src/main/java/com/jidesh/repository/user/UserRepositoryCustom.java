package com.jidesh.repository.user;

import java.util.List;

import com.jidesh.domain.User;



/**
 * Interface for repository functionality that ought to be implemented manually.
 * 
 * @author Oliver Gierke
 */
interface UserRepositoryCustom {

    /**
     * Custom repository operation.
     * 
     * @return
     */
    List<User> myCustomBatchOperation();
}
