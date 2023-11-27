<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Posts"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.BlogDao"%>
<div class="row">

<%

     Thread.sleep(1000);
     BlogDao d=new BlogDao(ConnectionProvider.getConnection());
     
     int cid =Integer.parseInt(request.getParameter("cid"));
      List<Posts> posts=null;
     if(cid==0){
     
     
     
    posts= d.getAllPosts();
     }
     else{
           posts=d.getPostByCatId(cid);
     }
     
     if(posts.size()==0){
        out.println("<h3 class='display-3 text-center'>No Posts in this category</h3>");
        return;
     }
    for(Posts p:posts){
      
%>     
     
<div class="col-md-6 mt-2">
    
    <div class="card">
        <img class="card-img-top" src="blog_pics/<%= p.getpPic() %>" alt="Card image cap">
        
        <div class="card-body">
            
            <b><%= p.getpTitle() %></b>
            <p><%= p.getpContent() %></p>
           
            
        </div>
            <div class="card-footer primary-background text-center">
                 <a href="#!" class="btn btn-outline-light btn-sm"> <i class="fa fa-commenting-o"></i> <span>20</span>  </a>
                <a href="show_blog_page.jsp?post_id=<%= p.getPid() %>" class="btn btn-outline-light btn-sm">Read more...</a>
                <a href="#!" class="btn btn-outline-light btn-sm"> <i class="fa fa-thumbs-o-up"></i> <span>10</span>  </a>
               
            </div>
    </div>
</div>
  
<%
    }

%>
</div>  
    
    
   


