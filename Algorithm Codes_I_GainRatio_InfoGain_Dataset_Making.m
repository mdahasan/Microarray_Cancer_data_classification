clear all;
dataset = importdata('Test Data.txt');
[rows_d, cols_d] = size(dataset);

%% Making GainRatio fature dataset
features_gr = importdata('GainRatio features.txt');
[rows_gr, cols_gr] = size(features_gr);

fid_gr_w = fopen('GainRatio Dataset for Weka.txt','w');
fid_gr_s = fopen('GainRatio Dataset for SVM.txt','w');

% For Weka
for i = 1:rows_d
   for j = 1:rows_gr
       fprintf(fid_gr_w,'%d ',dataset(i,features_gr(j)));
   end
   fprintf(fid_gr_w,'%d',dataset(i,cols_d));
   fprintf(fid_gr_w,'\n');
end
fclose(fid_gr_w);

% For SVM
for i = 1:rows_d
    fprintf(fid_gr_s,'%d ',dataset(i,cols_d));
   for j = 1:rows_gr
       fprintf(fid_gr_s,'%d:%d ',j,dataset(i,features_gr(j)));
   end
   fprintf(fid_gr_s,'\n');
end
fclose(fid_gr_s);

%% Making Information Gain feature dataset
features_ig = importdata('InformationGain features.txt');
[rows_ig, cols_ig] = size(features_ig);

fid_ig_w = fopen('InformatioGain Dataset for Weka.txt','w');
fid_ig_s = fopen('InformatioGain Dataset for SVM.txt','w');

% For Weka
for i = 1:rows_d
   for j = 1:rows_ig
       fprintf(fid_ig_w,'%d ',dataset(i,features_ig(j)));
   end
   fprintf(fid_ig_w,'%d',dataset(i,cols_d));
   fprintf(fid_ig_w,'\n');
end
fclose(fid_ig_w);

% For SVM
for i = 1:rows_d
    fprintf(fid_ig_s,'%d ',dataset(i,cols_d));
   for j = 1:rows_ig
       fprintf(fid_ig_s,'%d:%d ',j,dataset(i,features_ig(j)));
   end
   fprintf(fid_ig_s,'\n');
end
fclose(fid_ig_s);