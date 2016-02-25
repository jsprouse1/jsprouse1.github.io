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
    puts "File not found."
end

end

