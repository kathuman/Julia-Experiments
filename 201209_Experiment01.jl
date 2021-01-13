using Ipopt
model = Model(with_optimizer(Ipopt.Optimizer))
@variable(model, x, start = 0.0)
@variable(model, y, start = 0.0)

@NLobjective(model, Min, (1 - x) ^ 2 + 100 * (y - x ^ 2) ^ 2)

JuMP.optimize!(model)
println("x = ", JuMP.result_value(x), " y = ", JuMP.result_value(y))

# adding a (linear) constraint
@constraint(model, x + y == 10)
JuMP.optimize!(model)
println("x = ", JuMP.result_value(x), " y = ", JuMP.result_value(y))