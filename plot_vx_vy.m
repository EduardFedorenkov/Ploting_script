function plot_vx_vy(distr, Vmax, time, index, varargin)
v_size = size(distr);
v = linspace(-Vmax, Vmax, v_size(1));

pic = figure(index);
set(gcf, 'DefaultAxesFontSize', 20);
set(gcf, 'DefaultTextFontSize', 20);
pcolor(v, v, distr);
xlabel('v_x [cm/s]');
ylabel('v_y [cm/s]');
title(strcat('f(t= ',num2str(time*1e3),' mls)'));
shading flat;
shading interp;
set(gcf,'PaperUnits','points');
set(gcf,'position',[0,0,1200,1000]);
colormap jet;
colorbar;
if(nargin == 5)
    caxis([0 varargin{1}]);
end
saveas(pic, strcat('f_',num2str(index - 1)), 'png');
end
