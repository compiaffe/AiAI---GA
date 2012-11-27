function [ population ] = fitness_sum_ones( population, popSize, geneLength )
%FITNESS_SUM_ONES Summary of this function goes here
%   Detailed explanation goes here
for x = 1:popSize
    population(x).f = 0;
    for y = 1:geneLength
        if population(x).g(y)==1
            population(x).f = (population(x).f + 1);
        end
        
    end
end

end

