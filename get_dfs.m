function OutCell = get_dfs(path, file_name)
list = dir(path);
list = list([list.isdir] == 0);
len = length(list);
OutCell = cell(1,len);

for i = 0:len-1
    fid = fopen(strcat(path,'\',file_name,num2str(i)), 'r');
    if fid < 0
        error('error opening file %s\n', strcat(file_name,num2str(i)));
    end
    OutCell{i+1} = fread(fid,inf,'double');
    fclose(fid);
end
end