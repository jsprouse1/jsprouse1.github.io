class Generate_blog

def new_entry()
    puts "Enter Place Name: "
    title = gets.chomp
    puts "Enter Description: "
    descrip = gets.chomp
    puts "Enter Picture URL: "
    pic = gets.chomp
    
    spotHtml = File.open("favored_spot.html", "r+")
    content = spotHtml.read
    content = content[0..-15]

    content += "\n" + "<div class=\"container\" >" + "\n"
    content += "<h2>" + title + "</h2>" + "\n"
    content += "<p>" + descrip + "</p>" + "\n"
    content += "<img src= " + pic + ">" + "\n"
    content += "</div>" + "\n"
    content += "</BODY></HTML>"
    
    spotHtml = File.new("favored_spot.html", "w")
    spotHtml.write(content)
    spotHtml.close()
    
    Generate_blog.new.again()
end

def again()
    puts "Would you like to make another entry? [y,n]"
    more = gets.chomp
    if more == "y"
        Generate_blog.new.new_entry()
    end
end

if file.exist?('favored_spot.html')
    Generate_blog.new.new_entry()
else
    spotHtml = File.new("favored_spot.html", "w")
    sContent =" <!DOCTYPE html>
<html>
    
    <head>
        <title>JP's Resume</title>
  
   <style>
       body
       {
             background-color:gray;
             line-height: 20px;
             font-family: \"Palatino Linotype\", \"Book Antiqua\", Palatino, serif;
       }
    
       ul {
    list-style-type: none;
    margin: 10;
    padding: 10;
    overflow: hidden;
    background-color: Black;
}
h1, h2, h3, h4, h5, h6{ margin-top:20px;
                          margin-bottom:1px;
       }
li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 0px 10px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #666;
}

.active {
    background-color: #4CAF50;
}
       .container {
           background-color:#666666;
           margin-top:50px;
           margin-bottom:30px;
           margin-left:30px;
           margin-right:30px;
           width:100%;
           padding:10px; 
           box-shadow:2px 1px 3px 3px inset;
           
       }
       nav {
            display:inline;
            line-height:10px;
            background-color:black;
            height:8px;
            width:100%;
            float:left;
            padding:5px; 
}
   </style>
     </head>
    <body>
        <h2><font color=black>John-Paul Sprouse</h2>
        
        
        <nav><font color=Black>
            <li><a href=\"/index.html\">Home </a></li>
            <li><a href=\"/projects.html\">Projects  </a> </li>
            <li><a href=\"/resume.html\">Resume  </a> </li>
             <li><a href=\"/about.html\">About</a></li>
       </nav>
       "
spotHtml.write(sContent)
spotHtml.close()
Generate_blog.new.new_entry()
end

end

