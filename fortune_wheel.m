function [indxOfAction, Selectednode] = fortune_wheel(p_i,Cluster_i)

  [p_i ,ind]=sort(p_i);
 
  Cluster_i=Cluster_i(ind);
  
  accumulation = cumsum(p_i);
  
  rnd = rand() * accumulation(end);
  
  Selectednode =-1;
  indxOfAction =-1;
  
  for j = 1 : length(accumulation)
      
    if (accumulation(j) > rnd)
        
      Selectednode = Cluster_i(j);
      
      indxOfAction=ind(j);
      break;
    end
  end
 if Selectednode==-1 && indxOfAction==-1
     Selectednode=Cluster_i(end);
     indxOfAction=ind(end);
 end