%code-matlab----sequence-number
% Author: Jacob Pham
% Tool: Matlab 2013a
% History: 22/5/2014
% Description: Calculate the total number of sequences S and then concluded that chain convergence or divergence

%==============================
function bai9_word
    clc
    syms x n Sn
    Sn=0;
    disp('              inf     ')
    disp('            %%%%%%%%%%')
    disp('              %                             ')
    disp('                %     1          1          ')
    disp(' Cho chuoi        %  ---.sin(--------)      ')
    disp('                %     n       sqrt(n)       ')
    disp('              %                             ')
    disp('            %%%%%%%%%%%%%%%%')
    
    x=input('Nhap so hang can tinh chuoi, x = ')
    disp('-----------------Tong x so hang dau tien la---------------------')
    Sn=double(symsum((1/n)*sin(1/sqrt(n)),n,1,x))
    disp('-----------------Tong tu 1 den vo cung--------------------------')
    S=double(symsum((1/n)*sin(1/sqrt(n)),n,1,inf))
    if S~=(S+1)
        disp('Suy ra chuoi da cho hoi tu')
    else
        disp('Suy ra chuoi da cho  phan ky')
    end
end
