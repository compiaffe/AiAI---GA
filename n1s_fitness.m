function [ population ] = n1s_fitness( population,popSize,geneLength )
%N1S_FITNESS Summary of this function goes here
%  calculates the individual fitness based on the number of '1's in the
%  genom
        
        for x = 1:popSize
            population(x).f = 0;
            for y = 1:geneLength
                if population(x).g(y)==1
                    population(x).f = (population(x).f + 1);
                end
                
            end
        end

end

