<%-- 
    Document   : Contact
    Created on : 27 Jun, 2019, 4:14:45 PM
    Author     : taj goud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Contact us</title>
    <body>
        <h1 id="cous"> CONTACT US FORUM </h1>
       
            <div class="cont">   
                <label for="name">Name:</label>
              <input id="name" class="input" name="name" type="text" value="" size="20">
            </div>
                    <div class="cont">
                        <label for="email">Email:</label>
                        <input id="email" class="input" name="email" type="email" value="" size="20">
                    </div>
                    <div class="cont">
                        <label for="Message">Message:</label> <br/>
                           <textarea id="msg" class="input" name="message" rows="20" cols="40">                    
</textarea></br>
        
               <p><input id="submit_button" type="submit" value="send email"> </p>
                
               </div>                         
    </body>
</html>
