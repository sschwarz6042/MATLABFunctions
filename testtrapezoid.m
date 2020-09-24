%Output: plot of error
function [nVals, errVals]=testtrapezoid()
    n = [4; 8; 16; 32; 64; 128];
    nVals = zeros(1, 6);
    errVals = zeros(1, 6);
    absValue = 0.55067103588278;
    for i=1:6
        nVals(1, i) = trapezoid('problem1', 0.0, 0.8, n(i, 1));
        errVals(1, i) = nVals(1, i) - absValue;
    end
    loglog(nVals, errVals);
end