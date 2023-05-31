
Attr = Pair{String, <:Any}
Content = Any

function tag(name::String)

	function with_attrs(attrs::Attr...)
		attr_str = isempty(attrs) ? "" : _attr_str(attrs)

		function with_content(content::Content...)
			if isempty(content) 
				return "<$(name)$(attr_str)/>" 
			end
			return "<$(name)$(attr_str)>$(join(content,""))</$(name)>"
		end

		return with_content
	end

	return with_attrs
end


_attr_str(attrs) = string(
	" ",
	join(["$(attr.first)=\"$(attr[end])\"" for attr in attrs], " ")
)

