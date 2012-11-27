function [ distanceChartTSP ] = generate_TSP_problem( popSize, minDist, maxDist)
%GENERATE_TSP_PROBLEM Summary of this function goes here
%   This algorithm generates a chart for a TSP problem, i.e. distances
%   between towns.
distanceChartTSP = zeros(popSize,popSize);
for i = 1:popSize % for all rows
    for j = 1:i %and all colums under the eye apart
        if i~=j %prevents the generation of distance values for trips between the same city(Cologne to Cologne)
            distanceChartTSP(i,j) = randi([minDist,maxDist]);
            distanceChartTSP(j,i) = distanceChartTSP(i,j);
        end
        
    end
end

end

