function [ population ] = generate_TS_population( population,popSize,geneLength )
%GENERATE_TS_POPULATION Summary of this function goes here
%   will generate a population of individuals which each has a random,
%non-city revisiting solutions
temp=1;
flag = 1;
for x = 1:popSize
    for y = 1:geneLength
        while flag == 1
            temp = randi([1,geneLength]);%creates a random city to visit
            for z = 1:y %checks if there already is this value in the sofar existing genom of this individual
                if population(x).g(z) == temp
                    flag = 1;
                    break;
                end
                flag = 0;
            end
            
            
        end
        population(x).g(y) = temp;
        population(x).f = 0;
        flag = 1;
    end
    
end




