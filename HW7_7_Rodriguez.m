%% HW7.7
disp('Part (a)')
A=[1,2]; B=[10,3]; C=[6,11];
Area = TriArea(A,B,C);
fprintf('The area of the triangle is %.1f\n\n',Area) % fprintf writes data
% to text file, %.1f in the format specifier specifies that the value
% in each line of output is a floating point number with one number after
% the decimal place

disp('Part (b)')
A=[-1.5, -4.2, -3]; B=[-5.1, 6.3, 2]; C=[12.1, 0, -0.5];
Area = TriArea(A,B,C);
fprintf('The area of the triangle is %.1f\n\n',Area)