function res = air_net_nmae(y, yhat, mask)
% AIR-Net Normalized Mean Absolute Error (NMAE)
%
% Parameters
% y - the ground truth
% yhat - the predicted
% mask - the mask

% Returns
% res - the NMAE as calculated in AIR-Net
inv_mask = 1 - mask;
abs_masked = abs((y - yhat) * inv_mask);
vec_y = y(:);
res = sum(abs_masked(:)) / sum(inv_mask(:)) / (max(vec_y) - min(vec_y));
end
