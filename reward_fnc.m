
function [ p ] = reward_fnc(p,indx,a)

m=numel(p);

for i=1:m
    
      p{i}(indx(i))=p{i}(indx(i))+a*(1-p{i}(indx(i)));
      
      
      p{i}(1:end ~=indx(i))=(1-a)*p{i}(1:end ~=indx(i));
end

end

