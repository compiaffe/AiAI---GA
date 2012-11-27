function [ offspring ] = two_point_CO( parents,popSize,geneLength,coRate )
%TWO_POINT_CO Summary of this function goes here
%   Detailed explanation goes here
offspring(1:popSize)=struct('g',{[zeros(1,geneLength)]},'f',[0]);
for x = 1:2:popSize
    z=rand(1);                %flip a coin completely random(like drawing from Gauss distribution?)
    if z <= coRate                 %implements the probability
        y = randi([1,popSize]);%find parents n1
        z = randi([1,popSize]);%find parent n2
        v = randi([1,geneLength]);%find 1st crossover position
        u = randi([v,geneLength]); %find 2nd cross over position
        for w = 1:v %copy the first part over
            offspring(x).g(w) = parents(y).g(w);
            offspring(x+1).g(w) = parents(z).g(w);
        end
        for w = v:u %copy the rest over
            offspring(x).g(w) = parents(z).g(w);
            offspring(x+1).g(w) = parents(y).g(w);
        end
        for w = u:geneLength %copy the rest over
            offspring(x).g(w) = parents(z).g(w);
            offspring(x+1).g(w) = parents(y).g(w);
        end
    end
end


end

