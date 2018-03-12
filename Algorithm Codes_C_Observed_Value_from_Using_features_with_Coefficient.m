clear all;
%% Here with the values of coefficients multiplied with the predictor
%% values of patients data, we will predict the observer values and
%% compare those values with the actual values. Those values which will be
%% further from the values generated from the normal dataset will be
%% considered as important features.

%% Reading the coefficient file
coefficients = importdata('coefficient.txt');
[rows_coef, columns_coef] = size(coefficients);

%% Reading the patients dataset
input = importdata('Training Data type 2.txt');
[rows_input, columns_input] = size(input);

%% Reading Selected genes
selected_genes = importdata('selected.txt');
[rows_attr, columns_attr] = size(selected_genes);

for i = 1:rows_attr
   index(i,1) = selected_genes(i,1); 
end

% Creating File
fid = fopen('features.txt','w');
%% Calculating the observer (Y) values with the predictor values
for iteration = 1:rows_attr
    % The actual observers' values (actual Ys')
    clear AY;
    clear PY;
    for y = 1:rows_input
       AY(y,1) = input(y,selected_genes(iteration)); 
    end
    
    k = 1;
    clear X;
    % Making Xs for current Y (feature)
    for j = 1:rows_attr
        % Not considering the Y (observers) column
        if(j ~= iteration)
           for i = 1:rows_input
              X(i,k) = input(i,selected_genes(j)); 
           end
           k = k + 1;
       end
    end
    
    % Calculating predicted Ys
    for p = 1:rows_input
        sum = 0;
       for q = 1:rows_coef
           sum = sum + (X(p,q) * coefficients(q,iteration));
       end
       % Predicted Y values
       PY(p) = sum;
    end
    
    dsum = 0;
    for diff = 1:rows_input
       divergence(diff) = abs(AY(diff) - PY(diff)); 
       dsum = dsum + divergence(diff);
    end   
    %fprintf(fid, '%d\n', dsum);
    div(iteration,1) = dsum;
end

% sorting the divergenece in descending order as greatese divergence comes
% first

for i = 1:rows_attr
   for j = i:rows_attr
      if(div(i,1) <= div(j,1))
         temp1 = div(i,1);
         div(i,1) = div(j,1);
         div(j,1) = temp1;
         
         temp2 = index(i,1);
         index(i,1) = index(j,1);
         index(j,1) = temp2;
      end
   end
end

number_of_features = (rows_attr*50)/100;
for i = 1:number_of_features
   fprintf(fid,'%d\n',index(i,1)); 
end

fclose(fid);
