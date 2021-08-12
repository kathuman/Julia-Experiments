using JuMP
using GLPK

model_no_solution = Model(GLPK.Optimizer)
@variable(model_no_solution, 0 <= x <= 1)
@variable(model_no_solution, 0 <= y <= 1)
@constraint(model_no_solution, x + y >= 3)
@objective(model_no_solution, Max, x + 2y)

optimize!(model_no_solution)

if termination_status(model_no_solution) == MOI.OPTIMAL
    optimal_solution = value(x)
    optimal_objective = objective_value(model_no_solution)
elseif termination_status(model_no_solution) == MOI.TIME_LIMIT && has_values(model_no_solution)
    suboptimal_solution = value(x)
    suboptimal_objective = objective_value(model_no_solution)
else
    error("The model was not solved correctly.")
end