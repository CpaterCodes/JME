using Test
include("../src/tag_bases.jl")

@testset "Can handle multiple children in a tag." begin
	ul, li = tag("ul"), tag("li");
	expected::String = "<ul><li>1</li><li>2</li><li>3</li></ul>";
	actual::String = ul()(
		li()(1),
		li()(2),
		li()(3)
	)

	@test expected == actual
end

