function [mu] = exercicio3(t, NC)

% t: vetor de tempo com instâncias das medições
% NC: medida do número de células a cada instante t

%%%%%%%%%%%%%%%%%%%%%%%%%%
time_quad = t.^2

N = length(t)

sum_time = sum(t)
sum_time_quad = sum(time_quad) 

ln_cels = log(NC)
sum_ln_cels = sum(ln_cels) 
time_X_ln_cels = t.*ln_cels

sum_do_produto = sum(time_X_ln_cels)

a1 = (N*sum_do_produto - sum_time*sum_ln_cels)/(N*sum_time_quad - sum_time^2)
a0 = sum_ln_cels/N - a1*(sum_time/N)

% mantenha essas duas linhas finais, subtituindo mu pelo valor que você calculou
mu = a1;

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
