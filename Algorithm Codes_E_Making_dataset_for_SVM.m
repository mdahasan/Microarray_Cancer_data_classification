clear all;
%% Here the dataset is being created that will be used in SVM classifier

%% Reading the features selected from the divergance file where the
%% difference predicted Y and the actual Y was measured
features10 = importdata('10 features.txt');
features20 = importdata('20 features.txt');
features30 = importdata('30 features.txt');
features40 = importdata('40 features.txt');
features50 = importdata('50 features.txt');
features60 = importdata('60 features.txt');
features70 = importdata('70 features.txt');
features80 = importdata('80 features.txt');
features90 = importdata('90 features.txt');
features100 = importdata('100 features.txt');
%features150 = importdata('150 features.txt');
%features200 = importdata('200 features.txt');
%features300 = importdata('300 features.txt');
%features400 = importdata('400 features.txt');
%features500 = importdata('500 features.txt');

%% Reading the actual colon dataset
dataset = importdata('Test Data.txt');
[rows_d, columns_d] = size(dataset);

%% Making the dataset compatible with the SVM Classifier

% cerating database file
fid10 = fopen('10_features_database.txt','w');
fid20 = fopen('20_features_database.txt','w');
fid30 = fopen('30_features_database.txt','w');
fid40 = fopen('40_features_database.txt','w');
fid50 = fopen('50_features_database.txt','w');
fid60 = fopen('60_features_database.txt','w');
fid70 = fopen('70_features_database.txt','w');
fid80 = fopen('80_features_database.txt','w');
fid90 = fopen('90_features_database.txt','w');
fid100 = fopen('100_features_database.txt','w');
%fid150 = fopen('150_features_database.txt','w');
%fid200 = fopen('200_features_database.txt','w');
%fid300 = fopen('300_features_database.txt','w');
%fid400 = fopen('400_features_database.txt','w');
%fid500 = fopen('500_features_database.txt','w');

% Making the database file for 10 features
for j = 1:rows_d
    fprintf(fid10,'%d ',dataset(j,columns_d));
    for i = 1:10
        fprintf(fid10,'%d:%d ',i,dataset(j,(features10(i))));    
    end
    fprintf(fid10,'\n');
end
fclose(fid10);

% Making the database file for 20 features
for j = 1:rows_d
    fprintf(fid20,'%d ',dataset(j,columns_d));
    for i = 1:20
        fprintf(fid20,'%d:%d ',i,dataset(j,(features20(i))));    
    end
    fprintf(fid20,'\n');
end
fclose(fid20);

% Making the database file for 30 features
for j = 1:rows_d
    fprintf(fid30,'%d ',dataset(j,columns_d));
    for i = 1:30
        fprintf(fid30,'%d:%d ',i,dataset(j,(features30(i))));    
    end
    fprintf(fid30,'\n');
end
fclose(fid30);

% Making the database file for 40 features
for j = 1:rows_d
    fprintf(fid40,'%d ',dataset(j,columns_d));
    for i = 1:40
        fprintf(fid40,'%d:%d ',i,dataset(j,(features40(i))));    
    end
    fprintf(fid40,'\n');
end
fclose(fid40);

% Making the database file for 50 features
for j = 1:rows_d
    fprintf(fid50,'%d ',dataset(j,columns_d));
    for i = 1:50
        fprintf(fid50,'%d:%d ',i,dataset(j,(features50(i))));    
    end
    fprintf(fid50,'\n');
end
fclose(fid50);

% Making the database file for 60 features
for j = 1:rows_d
    fprintf(fid60,'%d ',dataset(j,columns_d));
    for i = 1:60
        fprintf(fid60,'%d:%d ',i,dataset(j,(features60(i))));    
    end
    fprintf(fid60,'\n');
end
fclose(fid60);

% Making the database file for 70 features
for j = 1:rows_d
    fprintf(fid70,'%d ',dataset(j,columns_d));
    for i = 1:70
        fprintf(fid70,'%d:%d ',i,dataset(j,(features70(i))));    
    end
    fprintf(fid70,'\n');
end
fclose(fid70);

% Making the database file for 80 features
for j = 1:rows_d
    fprintf(fid80,'%d ',dataset(j,columns_d));
    for i = 1:80
        fprintf(fid80,'%d:%d ',i,dataset(j,(features80(i))));    
    end
    fprintf(fid80,'\n');
end
fclose(fid80);

% Making the database file for 90 features
for j = 1:rows_d
    fprintf(fid90,'%d ',dataset(j,columns_d));
    for i = 1:90
        fprintf(fid90,'%d:%d ',i,dataset(j,(features90(i))));    
    end
    fprintf(fid90,'\n');
end
fclose(fid90);

% Making the database file for 100 features
for j = 1:rows_d
    fprintf(fid100,'%d ',dataset(j,columns_d));
    for i = 1:100
        fprintf(fid100,'%d:%d ',i,dataset(j,(features100(i))));    
    end
    fprintf(fid100,'\n');
end
fclose(fid100);

% Making the database file for 150 features
%for j = 1:rows_d
%    fprintf(fid150,'%d ',dataset(j,1));
%    for i = 1:150
%        fprintf(fid150,'%d:%d ',i,dataset(j,(features150(i)+1)));    
%    end
%    fprintf(fid150,'\n');
%end
%fclose(fid150);

% Making the database file for 200 features
%for j = 1:rows_d
%    fprintf(fid200,'%d ',dataset(j,1));
%    for i = 1:200
%        fprintf(fid200,'%d:%d ',i,dataset(j,(features200(i)+1)));    
%    end
%    fprintf(fid200,'\n');
%end
%fclose(fid200);


