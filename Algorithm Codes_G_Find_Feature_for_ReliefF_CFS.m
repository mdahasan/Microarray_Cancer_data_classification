clear all;
%% Creating ReliefF and CFS Dataset (Initial)
dataset = importdata('Training Data.txt');
[rows_d, cols_d] = size(dataset);

features = importdata('selected.txt');
[rows_f, cols_f] = size(features);

%% Creating the dataset file
fid = fopen('Find Feature by ReliefF and CFS.txt','w');

% Making the database file for selected features
for j = 1:rows_d
    for i = 1:rows_f
        fprintf(fid,'%d ',dataset(j,(features(i))));    
    end
    fprintf(fid,'%d',dataset(j,cols_d));
    fprintf(fid,'\n');
end
fclose(fid);