function [ population ] = pair1s_fitness( population,popSize,geneLength )
%PAIR1S_FITNESS Summary of this function goes here
%   calculates fitness based on the number of 1s next to each other

for x = 1:popSize
    population(x).f = 0;
    for y = 1:2:(geneLength-1)                                             %checks all odd genes for matching pairs and ensures we stay within the array which would happen anyway
        if (population(x).g(y)== population(x).g(y+1)) == 1                %checks if both genes are 1s
            population(x).f = (population(x).f + 1);
            
        end
        
    end
end


end

