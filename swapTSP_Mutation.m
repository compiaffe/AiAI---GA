function [ offspring ] = swapTSP_Mutation( offspring, popSize, geneLength )
%SWAPTSP_MUTATION Summary of this function goes here
%   Detailed explanation goes here

for x = 1:popSize                           %for all offspring
    for y = 1:geneLength
        g1 = randi([1,geneLength]);
        g2 = randi([1,geneLength]);
        g1_val = offspring(x).g(g1);
        g2_val = offspring(x).g(g2);
        offspring(x).g(g1) = g2_val;
        offspring(x).g(g2) = g1_val;
    end
end

end

