/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GYM;

/**
 *
 * @author j-stock
 */
public abstract class Accounts {
   

    public abstract void setData(String username,String password,String Type);  

    public abstract void setData(String username,String password);

    public abstract void setData(String type);

    public abstract String getUsername();

    public abstract String getPassword();

    public abstract String getType();
    
}
