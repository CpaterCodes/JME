using Test
include("../src/formatters.jl")

@testset "Will add linebreaks to condensed html" begin
	before = "<ul><li>Foo</li><li>Bar</li></ul>"
	after = "<ul>\n<li>\nFoo\n</li>\n<li>\nBar\n</li>\n</ul>\n"
	
	@test with_linebreaks(before) == after
	
	before = "<main><div>Hello World!</div></main>"
	after = "<main>\n<div>\nHello World!\n</div>\n</main>\n"

	@test with_linebreaks(before) == after
end

