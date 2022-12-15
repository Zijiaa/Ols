using Ols
using Documenter

DocMeta.setdocmeta!(Ols, :DocTestSetup, :(using Ols); recursive=true)

makedocs(;
    modules=[Ols],
    authors="Zijiaa01~ <liu_zj0705@163.com> and contributors",
    repo="https://github.com/Zijiaa/Ols.jl/blob/{commit}{path}#{line}",
    sitename="Ols.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Zijiaa.github.io/Ols.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Zijiaa/Ols.jl",
    devbranch="master",
)
