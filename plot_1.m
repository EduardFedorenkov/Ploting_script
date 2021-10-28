%% Path for data access
path_df = 'C:\Users\Eduard\Documents\MATLAB\Ploting scripts\distributions';
path_params = 'C:\Users\Eduard\Documents\MATLAB\Ploting scripts\params';
path_linear_data = 'C:\Users\Eduard\Documents\MATLAB\Ploting scripts\linera_time_dependent_data';
path_errors_slice = 'C:\Users\Eduard\Documents\MATLAB\Ploting scripts\errors';
path_errors_linear = 'C:\Users\Eduard\Documents\MATLAB\Ploting scripts\mean_error';
path_for_time = 'C:\Users\Eduard\Documents\MATLAB\Ploting scripts\time_data';
%% Data preparation
distributions = get_num_data(path_df);
params = get_num_data(path_params);
%linear_data = get_num_data(path_linear_data);
%errors = get_num_data(path_errors_slice);
%mean_error = get_num_data(path_errors_linear);
times = get_num_data(path_for_time);
Vmax = params{1}(1);
Xmax = params{1}(2);
x_size = int32(params{1}(3));
v_size = int32(params{1}(4));

time_for_distr = times{1};
%% Ploting part
for i = 1:length(distributions)
    plot_x_vx(reshape(distributions{i}, [x_size, v_size]), Vmax, Xmax, time_for_distr(i), i);
end
%reshape_size = int32(sqrt(length(distributions{1})));
%for i = 1:length(distributions)
%    plot_vx_vy(reshape(distributions{i},reshape_size,reshape_size), Vmax, time_for_distr(i), i, max_color)
%end
%plot_linear_func(linear_data, time_full);
%plot_linear_func(mean_error, time_for_erroros);
%for i = 1:length(errors)
%    plot_vx_vy(reshape(errors{i},reshape_size,reshape_size), Vmax, time_for_erroros(i), i)
%end