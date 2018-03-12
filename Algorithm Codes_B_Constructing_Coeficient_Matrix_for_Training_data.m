clear all;
%% Reading the normal patients gene expression file
input = importdata('Training Data type 1.txt');
[rows_input, columns_input] = size(input);

%% Importing the selected Attributes
selected_attribute = importdata('selected.txt');
[rows_attr,columns_attr] = size(selected_attribute);

%% Making the X's (predictors) and Y's (obsevers)

coef = 1;
for iteration = 1:rows_attr
    clear b;
    clear Y;
   for y = 1:rows_input
      Y(y,1) = input(y,selected_attribute(iteration));
   end
   
   k = 1;
   clear X;
   
   % Conatructing X excluding the observer feature column (Y)
   for j = 1:rows_attr
       if(j ~= iteration) % If the column is not observer column 
            for i = 1:rows_input 
                X(i,k) = input(i,selected_attribute(j));
            end
            k = k + 1;
       end
   end
   b = regress(Y,X); % Multiple linear regression
   
   % Constructing the matrix of coefficients
   for c = 1:rows_attr - 1
        coefficient(c,coef) = b(c);
   end
   coef = coef + 1;
end

%% Creating File
fid = fopen('coefficient.txt','w');

for cf = 1:rows_attr-1
    for c = 1:coef-1
       fprintf(fid, '%d\t', coefficient(cf,c)); 
    end
    fprintf(fid,'\n');
end
fclose(fid);

