% NORMAL SAMPLES USING BOX-MUELLER METHOD
% DRAW SAMPLES FROM PROPOSAL DISTRIBUTION
% x 为电阻R1=2000Ω ，偏差1%
% y 为电阻R2=5000Ω ，偏差1%
% 标准偏差=3sigma=2000Ω*0.01/3
% 标准偏差=3sigma=5000Ω*0.01/3

% 分压电路，上拉2000，下拉5000

u = rand(2,100000);
r = sqrt(-2*log(u(1,:)));
theta = 2*pi*u(2,:);
x = 2000 + r.*cos(theta)*2000*0.01/3;
y = 5000 + r.*sin(theta)*5000*0.01/3;

vol = 5*y./(x.+y)

% % DISPLAY BOX-MULLER SAMPLES
% figure
% % X SAMPLES
% subplot(121);
% % histogram(x,100);
% hist(x,100);
% colormap hot;axis square
% title(sprintf('Box-Muller Samples Y\n Mean = %1.2f\n Variance = %1.2f\n Kurtosis = %1.2f',mean(x),var(x),3-kurtosis(x)))
% % xlim([-6 6])

% % Y SAMPLES
% subplot(122);
% % histogram(y,100);
% hist(y,100);
% colormap hot;axis square
% title(sprintf('Box-Muller Samples X\n Mean = %1.2f\n Variance = %1.2f\n Kurtosis = %1.2f',mean(y),var(y),3-kurtosis(y)))
% % xlim([-6 6])

figure
hist(vol,200);
colormap hot;axis square
title(sprintf('Box-Muller Samples Y\n Mean = %1.2f\n Variance = %1.2f\n Kurtosis = %1.2f',mean(vol),var(vol),3-kurtosis(vol)))
