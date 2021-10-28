function plot_linear_func(data, time)
for i = 1:length(data)
    pic = figure(i);
    set(gcf, 'DefaultAxesFontSize', 20);
    set(gcf, 'DefaultTextFontSize', 20);
    plot(time * 1e3, data{i});
    xlabel('time [mls]');
    ylabel('error [%]');
    title_name = 'Mean deviation from Maxwellian distribution function';
    title(title_name);
    saveas(pic, strcat('error_', num2str(i), 'png'));
end
end

