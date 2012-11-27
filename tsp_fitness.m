function [population ] = tsp_fitness(population, popSize, geneLength, distanceChartTSP )
%TSP_FITNESS Summary of this function goes here
%   Detailed explanation goes here
for i = 1:popSize %for all individuals
    population(i).f = 0;
    for j = 1:(geneLength-1) %check all path between cities
        population(i).f = population(i).f  + distanceChartTSP((population(i).g(j)),(population(i).g(j+1)));
    end
end


end

