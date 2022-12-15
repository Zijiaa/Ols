using Ols


using Test

using LinearAlgebra

@testset "Ols.jl" begin

    y =[NaN,
    1,
    2,
    3,
    4]

    y =reshape(y,5,1)

    x=   [ [1.0000 ,   1]
    [1.0000 ,  1]
    [1.0000 ,  2]
    [1.0000 ,  3]
    [1.0000 ,  4]]
    x=reshape(x,5,2)

    title = "test_ols"
    depv = "Chang_dVar(Wage)"
    indv = ["Constant"," DlogRelProp"]
    prevest = 0
    a,b,c,d,e=Ols(y,x,title,depv,indv,prevest)
    a[1]=round(a[1];digits=3)
    a[2]=round(a[2];digits=3)
    @test a≈ [1.333,0.519]

end