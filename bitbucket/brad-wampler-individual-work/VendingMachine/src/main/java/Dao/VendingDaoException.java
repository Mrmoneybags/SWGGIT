/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author j1bdw02
 */
public class VendingDaoException extends Exception{
        
    public VendingDaoException(String message) {
        super(message);
    }
	    
    public VendingDaoException(String message, Throwable cause) {
        super(message, cause);
    }
}