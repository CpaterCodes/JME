
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

end

