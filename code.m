%code-matlab----sequence-number
% Author: Jacob Pham
% Tool: Matlab 2013a
% History: 22/5/2014
% Description: Calculate the total number of sequences S and then concluded that chain convergence or divergence

%==============================
function bai9_word
    clc
    syms x n Sn
    disp('              inf     ')
    disp('            %%%%%%%%%%')
    disp('              %                             ')
    disp('                %     1          1          ')
    disp(' Cho chuoi        %  ---.sin(--------)      ')
    disp('                %     n       sqrt(n)       ')
    disp('              %                             ')
    disp('            %%%%%%%%%%%%%%%%')
    disp('                 n = 1                      ')
    x=input('Nhap so hang can tinh chuoi, n = ')
    disp('Sn = Tong n so hang dau tien la')
    Sn=double(symsum((1/n)*sin(1/sqrt(n)),n,1,x))
    if limit((1/n)*sin(1/sqrt(n)),n,inf)~=0
        disp('Chuoi da cho phan ky')
    else
        disp('S = Tong tu 1 den vo cung')
        S=symsum((1/n)*sin(1/sqrt(n)),n,1,inf);
        if S ~= S + 1
            S=double(symsum((1/n)*sin(1/sqrt(n)),n,1,inf))
            disp('Chuoi da cho hoi tu')
        else 
            disp('Chuoi da cho phan ky')
        end
    end
end
% Update: 25/5/2014
