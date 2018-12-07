function [ m,p] = cpr_poly_vit()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%% Constantes
p1_o = [2, 3];
p2_o = [7, 5];
p3_o = [13, 15];
p4_o = [133, 171];
Np = 100;
k = 330;
%% Polynomes

p(1) = [010, 011];
p(2) = [111, 101];
p(3) = [001011, 001101];
p(4) = [001011011, 001111001];
%% Memoire
m(1) = 1;
m(2) = 2;
m(3) = 3;
m(4) = 6;
%% Decodage Viterbi
treillis(1) = poly2trellis(m1+1,p1_o);
treillis(2) = poly2trellis(m2+1,p2_o);
treillis(3) = poly2trellis(m3+1,p3_o);
treillis(4) = poly2trellis(m4+1,p4_o);

deco_viterbi(1) = comm.ViterbiDecoder(treillis(1),...
    'TracebackDepth', 5*(m1+1),...
    'TerminationMethod', 'Terminated',...
    'InputFormat' , 'Unquantized');
deco_viterbi(2) = comm.ViterbiDecoder(treillis(2),...
    'TracebackDepth', 5*(m2+1),...
    'TerminationMethod', 'Terminated',...
    'InputFormat' , 'Unquantized');
deco_viterbi(3) = comm.ViterbiDecoder(treillis(3),...
    'TracebackDepth', 5*(m3+1),...
    'TerminationMethod', 'Terminated',...
    'InputFormat' , 'Unquantized');
deco_viterbi(4) = comm.ViterbiDecoder(treillis(4),...
    'TracebackDepth', 5*(m4+1),...
    'TerminationMethod', 'Terminated',...
    'InputFormat' , 'Unquantized');

end

