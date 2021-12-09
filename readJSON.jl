## Delete current index file
if isfile("myJuliaApproach/index.md")
    rm("myJuliaApproach/index.md")
end

using JSON
## get json data
data = JSON.parsefile("myJuliaApproach/data.json")
page = JSON.parsefile("myJuliaApproach/page.json")

#function checks, if the text format needs to be changed
function checkForAnnotations(line)
    frontString = ""
    backString = ""
    if line["annotations"]["bold"]
        frontString = "**"*frontString
        backString = backString*"**"
    elseif line["annotations"]["italic"]
        frontString = "*"*frontString
        backString = backString*"*"
    elseif line["annotations"]["code"]
        frontString = "``` "*frontString
        backString = backString*"```"
    end
    return frontString, backString
end

#function accesses content of child blocks



#function writes the content of the different blocks into the io file
function accessContent(block, io)
    type = block["type"]
    if type == "paragraph"
        for line in block[type]["text"]
            if line["text"]["link"] === nothing
                content = line["plain_text"]               
            else
                content = "["*line["plain_text"]*"]("*line["text"]["link"]["url"]*")"
            end
            front, back = checkForAnnotations(line);
            write(io, front*content*back);
        end
    elseif type == "heading_2"
        content = block[type]["text"][1]["plain_text"];
        # print(block[type]["text"][1]["plain_text"], '\n')
        front, back = checkForAnnotations(block[type]["text"][1]);
        write(io, "## "*front*content*back);
    elseif type == "callout"
        write(io, "\n\n"*block[type]["icon"]["emoji"]*" ")
        for line in block[type]["text"]
            if line["text"]["link"] === nothing
                content = line["plain_text"]               
            else
                content = "["*line["plain_text"]*"]("*line["text"]["link"]["url"]*")"
            end
            front, back = checkForAnnotations(line);
            write(io, front*content*back);
        end
    elseif type == "image"
        write(io, "!["*block[type]["caption"][1]["plain_text"]*"]("*block[type]["file"]["url"]*")")
    elseif type == "column_list"
        children = block[type]["children"]["results"]
        for column in children
            for y in column["column"]["children"]["results"]
                if y["object"] == "block"
                    y_type = y["type"]
                    accessContent(y, io)
                    if y["has_children"]
                        for x in y[y_type]["children"]["results"]
                            accessContent(x, io)
                        end
                    end
                end
            end
        end
    else
        println("Type unknown")
    end
    write(io, '\n')
end

#create new index file and set the header
io = open("myJuliaApproach/index.md", "w")
header = "@def title = \"My Franklin Sandbox\"\n@def hasmath = true\n@def hascode = true\n"
write(io, header)

write(io, "# "*page["icon"]["emoji"]*" "*page["properties"]["title"]["title"][1]["plain_text"]*"\n")

#iterate through data and write content into index.md
for i in data
    if i["object"] == "block"
        accessContent(i, io)
        # print(i["type"], "\n")
    end
end
close(io)
