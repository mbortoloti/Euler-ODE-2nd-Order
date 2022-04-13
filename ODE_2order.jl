#
#      Julia Code for numerical solution of the following Initial Problem Value 
#
#                 a(t) y''(t) + b(t) y'(t) + c(t)y(t) = f(t)
#                 y(t0) = c1
#                 y'(t0) = c2

#      by Marcio Antônio de Andrade Bortoloti
#         Departamento de Ciências Exatas e Tecnológicas
#         Universidade Estadual do Sudoeste da Bahia

using Plots;

include("euler.jl");

# Define functions a(t), b(t), and c(t)

a(t) = 1.0;
b(t) = 0.0;
c(t) = 1.0;

# Define right hand side function f
f(t) = 0.0;

# Set the time range   [t0,tf]
t0 = 0.0;
tf = 50.0;


# Set the time increment
dt = 1.e-4;

# Initial conditions
c1 = 2.0;
c2 = 0.0;

# Euler ODE Solver 
(t,y) = euler2(a,b,c,t0,tf,dt,f,c1,c2);

# Plot solution
plot(t,y,lw=3)