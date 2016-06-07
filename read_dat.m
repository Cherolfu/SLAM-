function graph = read_dat(filename)

fid = fopen(filename,'r');
data = fread(fid);
fclose(fid);
end