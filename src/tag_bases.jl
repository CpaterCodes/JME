
Attrs = Dict{String}
MaybeAttrs = Union{Attrs,Nothing}
MaybeString = Union{String,Nothing}


function tag(name::String)
	function with_attrs(attrs::MaybeAttrs=nothing)
		
		attr_str = attrs == nothing ? "" : _attrs(attrs)

		function with_content(content::MaybeString=nothing)
			content == nothing && return "<$(name)$(attr_str)/>"
			return "<$(name)$(attr_str)>$(content)</$(name)>"
		end

		return with_content
	end

	return with_attrs
end


_attrs(attrs::Attrs) = string(
	" ",
	join(["$(key)=\"$(attrs[key])\"" for key in keys(attrs)], " ")
)

