using Plots

u = rand(2,100000);
r = sqrt.(-2*log.(u[1,:]));

theta = 2*pi*u[2,:];
x = r.*cos.(theta);
y = r.*sin.(theta);

histogram(x)
histogram!(y)
# histogram(x,100)
# xlim([-6 6])