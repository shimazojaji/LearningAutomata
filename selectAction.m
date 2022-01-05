function [ P_All,SelectedNodes,indxOfActions ] = selectAction(p,Clusters)

m=numel(p);

SelectedNodes=zeros(1,m);
indxOfActions=zeros(1,m);

P_All=1;

for i=1:m
    
   [indxOfActions(i), SelectedNodes(i)]=fortune_wheel(p{i},Clusters{i}); 

    P_All=P_All*p{i}(indxOfActions(i));
    
end

end
