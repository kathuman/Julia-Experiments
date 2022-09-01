### A Pluto.jl notebook ###
# v0.19.10

using Markdown
using InteractiveUtils

# ╔═╡ 92c89200-1199-11ed-1e6c-9bbe788b99b4
using EventSimulation

# ╔═╡ fa45f2c1-4c24-42ab-a530-1fa54549f2f2
using Statistics:mean

# ╔═╡ d6001927-0be1-446d-ac41-73ebbc716ff0
mutable struct Jumps <: AbstractState
    n::Int
end

# ╔═╡ e43e3ba0-a978-4f72-8bde-0a338d6f4245
jump(s) = s.state.n+=1

# ╔═╡ 38c4bf5a-7743-4e8a-bacc-ee19695e7864
next(s) = s.now >= 1.0 ? nothing : rand()

# ╔═╡ d94409b8-6f41-4572-83bd-654702705dd9
function main()
    s = Scheduler(Jumps(0))
    repeat_register!(s, jump, next)
    go!(s)
    s.state.n
end

# ╔═╡ 782af9d1-5d25-41f4-a481-f71ef9f99da6
println(mean(main() for i in 1:10^6))

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
EventSimulation = "bf752c2e-6b1c-53e3-a22f-e5bb209bd3f1"
Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[compat]
EventSimulation = "~0.7.3"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[EventSimulation]]
deps = ["Random"]
git-tree-sha1 = "4214d8da65619059f25eb29db166c129ad515266"
uuid = "bf752c2e-6b1c-53e3-a22f-e5bb209bd3f1"
version = "0.7.3"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
"""

# ╔═╡ Cell order:
# ╠═92c89200-1199-11ed-1e6c-9bbe788b99b4
# ╠═fa45f2c1-4c24-42ab-a530-1fa54549f2f2
# ╠═d6001927-0be1-446d-ac41-73ebbc716ff0
# ╠═e43e3ba0-a978-4f72-8bde-0a338d6f4245
# ╠═38c4bf5a-7743-4e8a-bacc-ee19695e7864
# ╠═d94409b8-6f41-4572-83bd-654702705dd9
# ╠═782af9d1-5d25-41f4-a481-f71ef9f99da6
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
