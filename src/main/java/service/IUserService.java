/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.ArrayList;
import model.User;

/**
 *
 * @author Tatiana Salazar
 */
public interface IUserService {
    
    public ArrayList<User> findAllUsers();
    public User findUserById();
    public User saveUser(User userSave);
}
