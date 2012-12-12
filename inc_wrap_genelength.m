function [ position ] = inc_wrap_genelength( position, geneLength )
%WRAP_GENELENGTH checks if a value has grown bigger than the maximum value
%and makes it wrap
position = position + 1;
 if position > geneLength
     position = 1;
 end

end

