/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;
import com.tech.blog.entities.Category;
import com.tech.blog.entities.Posts;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hp
 */
public class BlogDao {
    Connection con;

    public BlogDao(Connection con) {
        this.con = con;
    }
    public ArrayList<Category> getAllCategories(){
    ArrayList<Category> list=new ArrayList<>();
    try{
    
    String q= "select * from ctable";
    Statement st=this.con.createStatement();
    ResultSet set=st.executeQuery(q);
    while(set.next()){
    int cid=set.getInt("cid");
    String cname=set.getString("cname");
      String description=set.getString("description");
      Category c=new Category(cid,cname,description);
      list.add(c);
    }
    
    }
    catch(Exception e)
    {
      e.printStackTrace();
    
    }
    return list;
    }
    
    public boolean savePost(Posts p){
    boolean f=false;
    try{
    
        String q="insert into ptable(pTitle,pContent,pCode,pPic,ccid,userId) values(?,?,?,?,?,?)";
        PreparedStatement pstmt=con.prepareStatement(q);
        pstmt.setString(1,p.getpTitle());
         pstmt.setString(2,p.getpContent());
          pstmt.setString(3,p.getpCode());
            pstmt.setString(4,p.getpPic());
           pstmt.setInt(5,p.getCcid());
             pstmt.setInt(6,p.getUserId());
             pstmt.executeUpdate();
             f=true;
           
    }catch(Exception e){
    e.printStackTrace();
    
    }
    return f;
    }
    
   public List<Posts> getAllPosts(){
       
       List<Posts> list=new ArrayList<>();
       try{
       
           PreparedStatement p=con.prepareStatement("select * from ptable order by pid desc");
           ResultSet set=p.executeQuery();
           while(set.next()){
             
               int pid=set.getInt("pid");
               String pTitle=set.getString("pTitle");
                String pContent=set.getString("pContent");
                 String pCode=set.getString("pCode");
                  String pPic=set.getString("pPic");
                  Timestamp date=set.getTimestamp("pDate");
                  int ccid=set.getInt("ccid");
                  int userId=set.getInt("userId");
                  Posts post=new Posts(pid, pTitle, pContent, pCode, pPic, date, ccid, userId);
                  list.add(post);
                  
           
           }
       
       }
       catch(Exception e){
          e.printStackTrace();
       }
       
       return list;
   }
   public List<Posts> getPostByCatId(int ccid){
   
        List<Posts> list=new ArrayList<>();
         try{
       
           PreparedStatement p=con.prepareStatement("select * from ptable where ccid=?");
           p.setInt(1,ccid);
           ResultSet set=p.executeQuery();
           while(set.next()){
             
               int pid=set.getInt("pid");
               String pTitle=set.getString("pTitle");
                String pContent=set.getString("pContent");
                 String pCode=set.getString("pCode");
                  String pPic=set.getString("pPic");
                  Timestamp date=set.getTimestamp("pDate");
                  
                  int userId=set.getInt("userId");
                  Posts post=new Posts(pid, pTitle, pContent, pCode, pPic, date, ccid, userId);
                  list.add(post);
                  
           
           }
       
       }
       catch(Exception e){
          e.printStackTrace();
       }
       return list;
         
   }
   
   public Posts getPostByPostId(int postId){
       Posts post=null;
   String q="select * from ptable where pid=?";
   try{
       
   
   PreparedStatement p=this.con.prepareStatement(q);
   p.setInt(1,postId);
   
   ResultSet set=p.executeQuery();
   if(set.next()){
   
        int pid=set.getInt("pid");
               String pTitle=set.getString("pTitle");
                String pContent=set.getString("pContent");
                 String pCode=set.getString("pCode");
                  String pPic=set.getString("pPic");
                  Timestamp date=set.getTimestamp("pDate");
                  int ccid=set.getInt("ccid");
                  int userId=set.getInt("userId");
                 post=new Posts(pid, pTitle, pContent, pCode, pPic, date, ccid, userId);
       
   
       
   
   }
   }
   catch(Exception e)
   {
   e.printStackTrace();
   }
   return post;
   
   }
}
