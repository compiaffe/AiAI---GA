function [ population ] = binary_random_population(population,popSize,geneLength )
%BINARY_RANDOM_POPULATION Summary of this function goes here
%   Detailed explanation goes here
    %% initiate the GA with random genes
    for x =1:popSize
        for y=1:geneLength
            population(x).g(y)=randi([0,1]);
            population(x).f=0;
        end
    end

end

