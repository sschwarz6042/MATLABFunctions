%Input: a matrix A
%Output: the summation of all the elements
function summation = MatSum(A)
    t = 0;
    for i = 1:size(A,1) % loop from 1 to number of rows
        for j = 1:size(A,2) % loop from 1 to number of columns
            t = t + A(i,j);
        end 
    end
    summation = t;
end