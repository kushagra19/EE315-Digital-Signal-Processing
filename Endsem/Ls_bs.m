function y = Ls_bs(x)
%LS_BS Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.9 and DSP System Toolbox 9.11.
% Generated on: 07-Nov-2021 20:05:34

%#codegen

% To generate C/C++ code from this function use the codegen command. Type
% 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    % % FIR Window Bandstop filter designed using the FIR1 function.
    %
    % % All frequency values are in Hz.
    % Fs = 44100;  % Sampling Frequency
    %
    % N    = 100;      % Order
    % Fc1  = 2500;     % First Cutoff Frequency
    % Fc2  = 20000;    % Second Cutoff Frequency
    % flag = 'scale';  % Sampling Flag
    % Beta = 0.5;      % Window Parameter
    %
    % % Create the window vector for the design algorithm.
    % win = kaiser(N+1, Beta);
    %
    % % Calculate the coefficients using the FIR1 function.
    % b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'stop', win, flag);
    
    Hd = dsp.FIRFilter( ...
        'Numerator', [0.000186349843764664 -0.0122467436953604 ...
        6.07902732362927e-05 -0.0115686096697089 0.000917064972777397 ...
        -0.00588184592058912 0.00221865331341358 0.00279424365047942 ...
        0.00284051971798148 0.0109735635001292 0.00171747631058114 ...
        0.0151135710869456 -0.00139941521277946 0.0131557824521377 ...
        -0.00550553481132101 0.00552355677012345 -0.00854665789095966 ...
        -0.00489894188432145 -0.00829282890606452 -0.0138609609425633 ...
        -0.00355481415395127 -0.0174961993621776 0.00483002283420983 ...
        -0.0140022929744381 0.0138120008892067 -0.00451419955080796 ...
        0.019025804433145 0.00724580904773757 0.016579088812111 ...
        0.016443935400771 0.00508289790326428 0.0191451607333894 ...
        -0.0129566715478491 0.0140124783957128 -0.0311319292925257 ...
        0.00295470975669302 -0.040774471487603 -0.0095868951348355 ...
        -0.0338440707599471 -0.0184455522860946 -0.00609366798878236 ...
        -0.0198848647626224 0.0406927182097898 -0.0131930700929159 ...
        0.0983554729039503 -0.0010278987149109 0.154230317731453 ...
        0.0116529611154941 0.194738882738607 0.0196397370805108 ...
        0.209529134331027 0.0196397370805108 0.194738882738607 ...
        0.0116529611154941 0.154230317731453 -0.0010278987149109 ...
        0.0983554729039503 -0.0131930700929159 0.0406927182097898 ...
        -0.0198848647626224 -0.00609366798878236 -0.0184455522860946 ...
        -0.0338440707599471 -0.0095868951348355 -0.040774471487603 ...
        0.00295470975669302 -0.0311319292925257 0.0140124783957128 ...
        -0.0129566715478491 0.0191451607333894 0.00508289790326428 ...
        0.016443935400771 0.016579088812111 0.00724580904773757 ...
        0.019025804433145 -0.00451419955080796 0.0138120008892067 ...
        -0.0140022929744381 0.00483002283420983 -0.0174961993621776 ...
        -0.00355481415395127 -0.0138609609425633 -0.00829282890606452 ...
        -0.00489894188432145 -0.00854665789095966 0.00552355677012345 ...
        -0.00550553481132101 0.0131557824521377 -0.00139941521277946 ...
        0.0151135710869456 0.00171747631058114 0.0109735635001292 ...
        0.00284051971798148 0.00279424365047942 0.00221865331341358 ...
        -0.00588184592058912 0.000917064972777397 -0.0115686096697089 ...
        6.07902732362927e-05 -0.0122467436953604 0.000186349843764664]);
end

y = step(Hd,double(x));


% [EOF]
