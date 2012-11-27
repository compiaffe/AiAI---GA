function [ population ] = generate_binary_gene_population( population,popSize,geneLength )
%GENERATE_BINARY_GENE_POPULATION Summary of this function goes here
%   Detailed explanation goes here
 for x =1:popSize
        for y=1:geneLength
            population(x).g(y)=randi([0,1]);
            population(x).f=0;
        end
    end

end

