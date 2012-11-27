function [offspring] = one_point_CO(parents,popSize,geneLength)
%ONE_POINT_CO Summary of this function goes here
%   Detailed explanation goes here
%% Recombination - one point cross over
offspring(1:popSize)=struct('g',{[zeros(1,geneLength)]},'f',[0]);

for x = 1:2:popSize %
    y = randi([1,popSize]);%find parents n1
    z = randi([1,popSize]);%find parent n2
    v = randi([1,geneLength]);%find crossover position
    for w = 1:v %copy the first part over
        offspring(x).g(w) = parents(y).g(w);
        offspring(x+1).g(w) = parents(z).g(w);
    end
    for w = v:geneLength %copy the rest over
        offspring(x).g(w) = parents(z).g(w);
        offspring(x+1).g(w) = parents(y).g(w);
    end
end


end

