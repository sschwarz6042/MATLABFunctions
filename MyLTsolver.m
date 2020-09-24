%inputs: L -- a lower triangular matrix
%        b -- load vector
%output: s -- solution for Ls=b
function s=MyLTsolver(L, b)
    A=[L, b];

    for i=1:size(A,1)
        A(i, size(A,2))=A(i, size(A,2))/A(i, i);
        A(i, i)=1;
        for j=(i+1):size(A,1)
            coeff=A(j, i)/A(i,i)*-1;
            for k=1:size(A,2)
                A(j, k) = A(j, k)+(A(i, k)*coeff);
            end
        end
    end
    
    %solvedM=A; %To check that the matrix is solved correctly
    s=zeros(size(A,1),1);
    for i=1:size(A,1)
        s(i,1) = A(i, size(A, 2));
    end
end