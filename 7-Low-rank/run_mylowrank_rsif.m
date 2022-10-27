mask_rate = 0.9;

ts = linspace(-2, 2, 300);
[xx, yy] = meshgrid(ts, ts);

us = sin(2 * xx + 2 * yy);
vs = cos(2 * xx - 2 * yy);

[usRec, usMasked, usMask] = mylowrank_rsif(us, mask_rate);
[vsRec, vsMasked, vsMask] = mylowrank_rsif(vs, mask_rate);

air_net_nmae(us, usRec, usMask)
air_net_nmae(vs, vsRec, vsMask)

% original = figure('Name', 'original');
% quiver(xx, yy, us, vs);
% masked = figure('Name', 'masked');
% quiver(xx, yy, usMasked, vsMasked);
% recovered = figure('Name', 'recovered');
% quiver(xx, yy, usRec, vsRec);

writematrix(usRec, mask_rate + "DropRecovered_us.csv");
writematrix(vsRec, mask_rate + "DropRecovered_vs.csv");
writematrix(usMask, mask_rate + "DropMask_us.csv");
writematrix(vsMask, mask_rate + "DropMask_vs.csv");
