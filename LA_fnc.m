function []=LA_fnc()

load Clusters.mat

global MAX_ITER MAX_PROB a b P_All k BestNodes BestCost RewardNo Time

m=numel(Clusters);

p=cell(1,m);

for j=1:m
    r=numel(Clusters{j});
    p{j}=repmat(1/r,1,r);
end

TH=Inf;
BestCost=Inf;
RewardNo=0;
k=0;
P_All=0;
tic;

%%
while(k<MAX_ITER && P_All<MAX_PROB )
    
    k=k+1;
 
    [P_All,SelectedNodes,indxOfActions]=selectAction(p,Clusters);

    Cost=calculateTotalWeight(SelectedNodes);
    
    if Cost<=TH
        RewardNo=RewardNo+1;
        beta=1;
    else
        beta=0;
    end
    
    if((k > 1) && (beta==1) )
        TH=((k-1)*TH+Cost)/k;
    elseif(k==1)
        TH=Cost;
        
    end
  
    
   
    if (beta==1)
        [p]=reward_fnc(p,indxOfActions,a);
    else
        [p] =Penalty_fnc(p,indxOfActions,b);
        
    end
  
       
   
    if Cost<=BestCost
        BestCost=Cost;
        BestNodes=  SelectedNodes;
    end
end
Time=toc;

