
Attrs = Dict{String}
MaybeAttrs = Union{Attrs, Nothing}
MaybeAny = Union{Any, Nothing}

function tag(name::String)

	function with_attrs(attr_dict::MaybeAttrs=nothing)
		attrs = attr_dict == nothing ? "" : _attr_str(attr_dict)

		function with_content(content::MaybeAny...)
			if isempty(content) return "<$(name)$(attrs)/>" end
			return "<$(name)$(attrs)>$(join(content,""))</$(name)>"
		end

		return with_content
	end

	return with_attrs
end


_attr_str(attrs::Attrs) = string(
	" ",
	join(["$(key)=\"$(attrs[key])\"" for key in keys(attrs)], " ")
)

