clear all;
close all;
clc;
%% Constantes
p1_o = [2, 3];
p2_o = [13, 15];
p3_o = [133, 171];
Np = 100;
k = 330;
%% Polynomes
p1_b = [010, 011];
p2_b = [001011, 001101];
p3_b = [001011011, 001111001];
%% Memoire
m1 = 1;
m2 = 3;
m3 = 6;
%% Decodage Viterbi
tab_treillis(1) = poly2trellis(m1+1,p1_o);
tab_treillis(2) = poly2trellis(m2+1,p2_o);
tab_treillis(3) = poly2trellis(m3+1,p3_o);
% treillis = poly2trellis(2,[2,3]);
% M = [1 0 0 1];
% L = 2;
% code = convenc(M,treillis);

deco_viterbi_1 = comm.ViterbiDecoder(tab_treillis(1),...
    'TracebackDepth', 5*(m1+1),...
    'TerminationMethod', 'Terminated',...
    'InputFormat' , 'Unquantized');
deco_viterbi_2 = comm.ViterbiDecoder(tab_treillis(2),...
    'TracebackDepth', 5*(m2+1),...
    'TerminationMethod', 'Terminated',...
    'InputFormat' , 'Unquantized');
deco_viterbi_3 = comm.ViterbiDecoder(tab_treillis(3),...
    'TracebackDepth', 5*(m3+1),...
    'TerminationMethod', 'Terminated',...
    'InputFormat' , 'Unquantized');






