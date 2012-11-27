function [ parents ] = tournament_selection(population,pop_size, tournament_size)
%TOURNAMENT_SELECTION Summary of this function goes here
%   Detailed explanation goes here

%parents=struct('g',{[]},'f',[]); % this is what parents should be

for w = 1:pop_size %create a set of parents with the same size as the old population
    
    best_individual = 0;
    bests_fitness = 0;
    for x = 1:tournament_size
        y =  randi([1,pop_size]); %find random individual from population
        if population(y).f > bests_fitness
            best_individual = y;
            bests_fitness = population(y).f;
        end
        
    end
    parents(w) = population(best_individual);
    
end

end

