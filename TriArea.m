function [Area] = TriArea(A, B, C)
% For program design with hierarchy chart, flowcharts, and pseudocode
% refer to file 'DEN417_HW7.7_Program_Design_and_its_Subroutines' (Visio)
% located here: C:\Users\ejoaq\OneDrive\1 My_Notebook\2 Entrepreneurship and Work\1 Teaching\1 National University\1 DEN417_MATLAB\Homework Assignments\Week Two

[AB, AC] = pointsTOVector(A, B, C);
xProduct = crossProduct(AB, AC);

function [vab, vac] = pointsTOVector(pa, pb, pc)
    vab = pb - pa;
    vac = pc - pa;
end

    function [xprod] = crossProduct(ab, ac)
        if length(ab) == 2 || length(ac) == 2 % Note the short circuit operator ||...
            % is here because the regular symbol for or would be misleading
            % due to it being within the conditional expression of an
            % if/end block, it behaves as its short-circuit equivalent
            % therefore, best practice is to use this
            % See: Onenote>Engineering>MATLAB>...Essentials>Section9
            % logical operators
            ab(3) = 0;
            ac(3) = 0;
        end
        [xprod] = cross(ab, ac);
    end
Area = 1/2*abs(sqrt(sum(xProduct.^2)));  

end
