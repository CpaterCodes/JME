using Test
include("../src/formatters.jl")

@testset "Will indent linebroken html appropriately" begin
	before = "<main>\n<div>\nHello World!\n</div>\n</main>\n"
	after = """<main>
		<div>
			Hello World!
		</div>
	</main>
	"""
	@test with_indents(before) == after
end
