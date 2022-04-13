function euler2(a,b,c,t0,tf,dt,f,c1,c2)
    y = [c1 , c2 * dt + c1];
    t = [t0 ,  t0 + dt];
    while t[end] <= tf
        tk = t[end] + dt;
        ykp1 = -(b(tk) * dt / a(tk) - 2.0) * y[end] - (1.0 - b(tk) * dt / a(tk) + c(tk) * dt^2 / a(tk))*y[end-1] + f(tk) * dt^2 / a(tk);
        push!(y,ykp1);
        push!(t,tk);
    end

    return(t,y);

end