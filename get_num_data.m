function OutCell = get_num_data(path)
list = dir(path);
OutCell = cell(1, length(list));

for i = 1:length(list)
    if list(i).isdir() == 0
        disp(list(i).name);
        fid = fopen(strcat(path,'\',list(i).name), 'r');
        if fid < 0
            error('error opening file %s\n',  list(i).name);
        end
        OutCell{i} = fread(fid,inf,'double');
        fclose(fid);
    end
end

OutCell = OutCell(~cellfun('isempty',OutCell));
end


