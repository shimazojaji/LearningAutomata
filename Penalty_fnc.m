
function [p] = Penalty_fnc(p,indx,b)
m=numel(p);
for i=1:m
    
   r=numel(p{i});
   
    p{i}(indx(i))=(1-b)* p{i}(indx(i));
    
    p{i}(1:end ~=indx(i))=(b/(r-1))+(1-b)* p{i}(1:end ~=indx(i));
    
end
end
