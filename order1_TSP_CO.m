function [ offspring ] = order1_TSP_CO( parents,popSize,geneLength )
%ORDER1_TSP_CO Summary of this function goes here
%   Detailed explanation goes here
offspring(1:popSize)=struct('g',{[zeros(1,geneLength)]},'f',[0]);
flag = 1;
for p = 1:popSize %for the whole population
    y = randi([1,popSize]);%find parents n1
    z = randi([1,popSize]);%find parent n2
    
    s1 = randi([1,geneLength]); %finds the one point on the string we will copy from the parents
    s2 = randi([1,geneLength]);%finds the other point on the string we will copy from the parents
    
    
    if  s1 <= s2    %ensures s1 is the start position of the string we copy
        start = s1;
        finish = s2;
    else
        start = s2;
        finish = s1;
    end
    %% first step - copy string of parent 1's genome to child
    for x = start:finish
        offspring(p).g(x) = parents(y).g(x);
    end
    %% second step - copy remaining items from parent 2
    parent_pos = inc_wrap(finish,geneLength); %increments the parents position and handles wrapping.
    offspring_pos = inc_wrap(finish,geneLength);
    check_pos = offspring_pos;
    while check_pos ~= (inc_wrap(finish,geneLength))                        % ---B--- this isnt correct yet...
        while parents(z).g(parent_pos) == offspring(p).g(checkpos)          % ---A---
            parent_pos = inc_wrap(parent_pos,geneLength);
        end
    end
    
end

