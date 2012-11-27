function [ offspring ] = uniform_CO( parents,popSize,geneLength,coRate )
%UNIFORM_CO Summary of this function goes here
%   Detailed explanation goes here
offspring(1:popSize)=struct('g',{[zeros(1,geneLength)]},'f',[0]);
for x = 1:2:popSize
    y=rand(1);                      %returns random float between 0 and 1
    if y <= coRate                  %implements the probability of having crossover - crossover rate
        p1  = randi([1,popSize]);   %find parents n1
        p2  = randi([1,popSize]);   %find parent n2
        
        for z = 1:geneLength        %checks all genes
            w = rand(1);            %probability of swapping genes from parent to create offspring
            if w <= 0.5             %swap genes
                offspring(x).g(z)= parents(p2).g(z);
                offspring(x+1).g(z)= parents(p1).g(z);
            else                    %dont swap genes
                offspring(x).g(z)= parents(p1).g(z);
                offspring(x+1).g(z)= parents(p2).g(z);
            end
        end
    end
end
end



