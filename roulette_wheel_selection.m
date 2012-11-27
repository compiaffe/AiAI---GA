function [ parents ] = roulette_wheel_selection( population, popSize, totPopFitness)
%ROULETTE_WHEEL_SELECTION Summary of this function goes here
%   Detailed explanation goes here
        %% find the parents
        %Begin summing the fitnesses
        %of the individuals in the population again until the running sum is
        % greater than or equal to the randomly chosen number.
        parents=struct('g',{[]},'f',[]);
        for z = 1:popSize %until we have enough parents
            rand_fitness = randi([0,totPopFitness]);% find random number inbetween 0 and tot_fitness
            again_tot_fitness=0; %we are recounting until again_tot_fitness >= rand_fitness
            for x = 1:popSize
                again_tot_fitness = (again_tot_fitness + population(x).f);
                if again_tot_fitness >= rand_fitness
                    parents(z) = population(x);
                    break;
                end
                
            end
        end

end

