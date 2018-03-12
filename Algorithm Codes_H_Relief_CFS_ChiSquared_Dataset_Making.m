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


%% Making CFS selected features dataset
features_cfs = importdata('CFS features.txt');
[rows_cfs, cols_cfs] = size(features_cfs);

fid_cfs_w = fopen('CFS Dataset for Weka.txt','w');
fid_cfs_s = fopen('CFS Dataset for SVM.txt','w');

% For Weka
for i = 1:rows_d
   for j = 1:rows_cfs
       fprintf(fid_cfs_w,'%d ',dataset(i,features_cfs(j)));
   end
   fprintf(fid_cfs_w,'%d',dataset(i,cols_d));
   fprintf(fid_cfs_w,'\n');
end
fclose(fid_cfs_w);

% For SVM
for i = 1:rows_d
    fprintf(fid_cfs_s,'%d ',dataset(i,cols_d));
   for j = 1:rows_cfs
       fprintf(fid_cfs_s,'%d:%d ',j,dataset(i,features_cfs(j)));
   end
   fprintf(fid_cfs_s,'\n');
end
fclose(fid_cfs_s);

%% Making ChiSquared selected features dataset
features_chi = importdata('ChiSquared features.txt');
[rows_chi, cols_chi] = size(features_cfs);

fid_chi_w = fopen('ChiSquared Dataset for Weka.txt','w');
fid_chi_s = fopen('ChiSquared Dataset for SVM.txt','w');

% For Weka
for i = 1:rows_d
   for j = 1:rows_chi
       fprintf(fid_chi_w,'%d ',dataset(i,features_chi(j)));
   end
   fprintf(fid_chi_w,'%d',dataset(i,cols_d));
   fprintf(fid_chi_w,'\n');
end
fclose(fid_chi_w);

% For SVM
for i = 1:rows_d
    fprintf(fid_chi_s,'%d ',dataset(i,cols_d));
   for j = 1:rows_chi
       fprintf(fid_chi_s,'%d:%d ',j,dataset(i,features_chi(j)));
   end
   fprintf(fid_chi_s,'\n');
end
fclose(fid_chi_s);

%% Making ReliefF selected features dataset
features_r = importdata('ReliefF features.txt');
[rows_r, cols_r] = size(features_r);

% Making 100, 150, 200 features
fid100 = fopen('100 ReliefF features.txt','w');
fid150 = fopen('150 ReliefF features.txt','w');
fid200 = fopen('200 ReliefF features.txt','w');

% 100 features
for i = 1:100
    fprintf(fid100,'%d\n',features_r(i));
end 
fclose(fid100);
% 150 features
for i = 1:150
    fprintf(fid150,'%d\n',features_r(i));
end 
fclose(fid150);
% 200 features
for i = 1:200
    fprintf(fid200,'%d\n',features_r(i));
end 
fclose(fid200);

% Making SVM dataset 
features100 = importdata('100 ReliefF features.txt');
features150 = importdata('150 ReliefF features.txt');
features200 = importdata('200 ReliefF features.txt');

fid_s_100 = fopen('100 ReliefF Dataset.txt','w');
fid_s_150 = fopen('150 ReliefF Dataset.txt','w');
fid_s_200 = fopen('200 ReliefF Dataset.txt','w');

fid_w_100 = fopen('100 ReliefF Dataset Weka.txt','w');
fid_w_150 = fopen('150 ReliefF Dataset Weka.txt','w');
fid_w_200 = fopen('200 ReliefF Dataset Weka.txt','w');

for i = 1:rows_d
    fprintf(fid_s_100,'%d ',dataset(i,cols_d));
   for j = 1:100
       fprintf(fid_s_100,'%d:%d ',j,dataset(i,features100(j)));
   end
   fprintf(fid_s_100,'\n');
end
fclose(fid_s_100);

for i = 1:rows_d
    fprintf(fid_s_150,'%d ',dataset(i,cols_d));
   for j = 1:150
       fprintf(fid_s_150,'%d:%d ',j,dataset(i,features150(j)));
   end
   fprintf(fid_s_150,'\n');
end
fclose(fid_s_150);

for i = 1:rows_d
    fprintf(fid_s_200,'%d ',dataset(i,cols_d));
   for j = 1:200
       fprintf(fid_s_200,'%d:%d ',j,dataset(i,features200(j)));
   end
   fprintf(fid_s_200,'\n');
end
fclose(fid_s_200);

% Making Weka Dataset
for i = 1:rows_d
   for j = 1:100
       fprintf(fid_w_100,'%d ',dataset(i,features100(j)));
   end
   fprintf(fid_w_100,'%d',dataset(i,cols_d));
   fprintf(fid_w_100,'\n');
end
fclose(fid_w_100);

for i = 1:rows_d
   for j = 1:150
       fprintf(fid_w_150,'%d ',dataset(i,features150(j)));
   end
   fprintf(fid_w_150,'%d',dataset(i,cols_d));
   fprintf(fid_w_150,'\n');
end
fclose(fid_w_150);

for i = 1:rows_d
   for j = 1:200
       fprintf(fid_w_200,'%d ',dataset(i,features200(j)));
   end
   fprintf(fid_w_200,'%d',dataset(i,cols_d));
   fprintf(fid_w_200,'\n');
end
fclose(fid_w_200);
