function res = mae(y,yhat)
% Mean Absolute Error (MAE)
%
% Parameters
% y - the ground truth
% yhat - the predicted

% Returns
% res - the MAE between y and yhat
res = mean(abs(y - yhat));
end
