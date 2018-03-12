clear all;
%% Attributes with similar expression values does not carry differential
%% quality. Here the similarity is measured by the mean values of
%% expressions of the attributes. Attributes with similar mean expression
%% values are considered unimportant 

%% Reading the normal input dataset
input1 = importdata('Training Data type 1.txt');
input2 = importdata('Training Data type 2.txt');

[rows1,column1] = size(input1);
[rows2,column2] = size(input2);

for i = 1:column1
   in1 = mean(input1(1:rows1,i));
   in2 = mean(input2(1:rows2,i));
   
   mean_difference(i,1) = abs(in1 - in2);
   index(i,1) = i;
   %fprintf(fid, '%d\n', mean_difference(i,1));
end

% Sorting mean_difference in descending order to get the greatest
% differences

for i = 1:column1
    for j = i:column1
       if(mean_difference(i,1)<= mean_difference(j,1))
        temp1 = mean_difference(i,1);
        mean_difference(i,1) = mean_difference(j,1);
        mean_difference(j,1) = temp1;
        
        temp2 = index(i,1);
        index(i,1) = index(j,1);
        index(j,1) = temp2;
       end
    end
end

% selectin the features for finding the coefficients.
% 10% data will be considered for this step

ffid = fopen('selected.txt','w');
number_of_selected = (column1*10)/100;
for i = 1:number_of_selected
   fprintf(ffid,'%d\n',index(i,1)); 
end
