
function Cost=calculateTotalWeight(SelectedNodes)
Cost=0;

load Weights.mat

for ii=1:numel(SelectedNodes)
    
    Cost=Cost+Weights(SelectedNodes(ii));
end

end

