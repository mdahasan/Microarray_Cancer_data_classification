%% Selecting genes
geneset = importdata('geneset.txt');
[rows_g, cols_g] = size(geneset);

%% reading features
features = importdata('10 features.txt');
[rows_f, cols_f] = size(features);

fid = fopen('genes.txt','w');

for i = 1:rows_f
   fprintf(fid, '%s, ', geneset(features(i)));
end