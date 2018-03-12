%% Creating feature set of different sizes

% Reading the file contianing features index
feature_index = importdata('features.txt');
[rows_f, col_f] = size(feature_index);

% cerating file
fid10 = fopen('10 features.txt','w');
fid20 = fopen('20 features.txt','w');
fid30 = fopen('30 features.txt','w');
fid40 = fopen('40 features.txt','w');
fid50 = fopen('50 features.txt','w');
fid60 = fopen('60 features.txt','w');
fid70 = fopen('70 features.txt','w');
fid80 = fopen('80 features.txt','w');
fid90 = fopen('90 features.txt','w');
fid100 = fopen('100 features.txt','w');
%fid150 = fopen('150 features.txt','w');
%fid200 = fopen('200 features.txt','w');
%fid300 = fopen('300 features.txt','w');
%fid400 = fopen('400 features.txt','w');
%fid500 = fopen('500 features.txt','w');


% 10 features file
for j = 1:10
    fprintf(fid10,'%d\n',feature_index(j,1));
end
fclose(fid10);    

% 20 features file
for j = 1:20
    fprintf(fid20,'%d\n',feature_index(j,1));
end
fclose(fid20);    

% 30 features file
for j = 1:30
    fprintf(fid30,'%d\n',feature_index(j,1));
end
fclose(fid30);    

% 40 features file
for j = 1:40
    fprintf(fid40,'%d\n',feature_index(j,1));
end
fclose(fid40);    

% 50 features file
for j = 1:50
    fprintf(fid50,'%d\n',feature_index(j,1));
end
fclose(fid50);    

% 60 features file
for j = 1:60
    fprintf(fid60,'%d\n',feature_index(j,1));
end
fclose(fid60);    

% 70 features file
for j = 1:70
    fprintf(fid70,'%d\n',feature_index(j,1));
end
fclose(fid70);    

% 80 features file
for j = 1:80
    fprintf(fid80,'%d\n',feature_index(j,1));
end
fclose(fid80);    

% 90 features file
for j = 1:90
    fprintf(fid90,'%d\n',feature_index(j,1));
end
fclose(fid90);    

% 100 features file
for j = 1:100
    fprintf(fid100,'%d\n',feature_index(j,1));
end
fclose(fid100);

% 150 features file
%for j = 1:150
%    fprintf(fid150,'%d\n',feature_index(j,1));
%end
%fclose(fid150);

% 200 features file
%for j = 1:200
%    fprintf(fid200,'%d\n',feature_index(j,1));
%end
%fclose(fid200);    


% 300 features file
%for j = 1:300
%    fprintf(fid300,'%d\n',feature_index(j,1));
%end
%fclose(fid300);    


% 400 features file
%for j = 1:400
%    fprintf(fid400,'%d\n',feature_index(j,1));
%end
%fclose(fid400);    

% 500 features file
%for j = 1:500
%    fprintf(fid500,'%d\n',feature_index(j,1));
%end
%fclose(fid500);    

