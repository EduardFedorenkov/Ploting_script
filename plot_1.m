%% Path for data access
path = 'C:\Users\fedorenkov\MATLAB\DF_plots\DFs';
%% Data preparation
distrs = get_dfs(path, 'DF_z_0_t_');
%% Ploting part
reshape_size = int32(length(distrs{1})^(1/3));
for i = 1:length(distrs)
    distrs{i} = reshape(distrs{i}, [reshape_size, reshape_size, reshape_size]);
end
z_slise = round((reshape_size + 1) / 2);
%% Ploting
for i = 1:length(distrs)
    plot_vx_vy(log(distrs{i}(:,:,z_slise)), 5, i, i, max(max(max(distrs{1}))));
end