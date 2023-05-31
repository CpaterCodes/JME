
function with_linebreaks(html::String)
	return html |> html -> replace(
		html, 
		"<" => "\n<", 
		">" => ">\n"
	) |> html -> replace(
			html, 
			"\n\n" => "\n"
	) |> html -> html[2:end]
end

function with_indents(html::String)
	rows::Vector{String} = split(html, "\n")
	depth::Integer = 0
	for index = 1:length(rows)

		row = rows[index]
		if occursin("</", row) && depth > 0 
			depth -= 1
			rows[index] = repeat("\t", depth) * row
		
		elseif occursin("/>", row)
			rows[index] = repeat("\t", depth) * row

		elseif occursin(">", row)
			rows[index] = repeat("\t", depth) * row
			depth += 1

		else
			rows[index] = repeat("\t", depth) * row
		end
	end
	return join(rows, "\n")
end

