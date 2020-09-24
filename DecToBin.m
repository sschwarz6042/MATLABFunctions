%Input: A decinmal number
%Output: A character array of the binary number with the first 16 digits of
%        the fractional part.
function bin = DecToBin(dec)
    ipart = floor(dec);
    fpart = dec - ipart;
    
    %Finds the integer part by adding the remainders to a string.
    %The string is then reversed and converted to a double after
    %all of the values are added to it.
    
    s = "";
    while ipart >= 1
        t = rem(ipart, 2);
        s = s + num2str(t);
        ipart = floor(ipart / 2);
    end
    s = reverse(s);
    bin = s;
    
    %Finds the first 16 digits of the fractional part by multiplying the
    %fractional part by 2 and taking the part in the 1's place. 
    
    s = "";
    for i = 1:16
        t = floor(fpart * 2);
        s = s + num2str(t);
        fpart = fpart * 2;
        fpart = fpart - floor(fpart);
    end
    bin = bin + "." + s;
    
    %Binary numbers are represented by character arrays in matlab so the
    %string is converted to a character array
    bin = convertStringsToChars(bin);
    
end