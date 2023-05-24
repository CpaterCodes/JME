using Test
include("../src/formatters.jl")

@testset "Will add linebreaks to condensed html" begin
	before = "<ul><li></li><li></li></ul>"
	after = "<ul>\n<li>\n</li>\n<li>\n</li>\n</ul>\n"
	
	@test with_linebreaks(before) == after
end

