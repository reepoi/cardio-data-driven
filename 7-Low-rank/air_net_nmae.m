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
ydiff = abs(y - yhat);
ydiff_masked = ydiff(inv_mask == 1);
vec_y = y(:);
res = sum(ydiff_masked) / sum(inv_mask(:)) / (max(vec_y) - min(vec_y));
end
