function [ population ] = strict_pairs1s_fitness(population,popSize,geneLength )
%STRICT_PAIRS1S_FITNESS Summary of this function goes here
%   Detailed explanation goes here
for x = 1:popSize
    population(x).f = 0;
    for y = 1:(geneLength-1)                                             %checks all odd genes for matching pairs and ensures we stay within the array which would happen anyway
        if (population(x).g(y)== population(x).g(y+1)) == 1                %checks if both genes are 1s
            population(x).f = (population(x).f + 1);
            y = (y + 1);                                                    %prevents overlapping by jumping to the next unchecked gene
            if y >=(geneLength-1)
                break;
            end
        end
        
    end
end

end

