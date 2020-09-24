%Input: x, y: the data set to be interpolated
%Output: a: table for Newton's divided differences
function a = divdiff(x, y)

    a = zeros(length(x), length(x) + 1);
    a(:, 1) = x;
    a(:, 2) = y;
    for i = 3:length(x) + 1
        for j = i - 1:length(x)
            a(j, i) = (a(j, i-1) - a(j-1, i-1))/(a(j, 1) - a(j - i + 2, 1));
        end
    end
end