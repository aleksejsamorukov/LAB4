close all
clear all
clc
 % raidžių pavyzdžių nuskaitymas ir požymių skaičiavimas
 pavadinimas = 'skaiciai9.jpg';
 pozymiai_tinklo_mokymui = pozymiai_raidems_atpazinti(pavadinimas, 5);
 %% Atpažintuvo kūrimas
 % požymiai iš celių masyvo perkeliami į matricą
 P = cell2mat(pozymiai_tinklo_mokymui);
% pageidaujamų atsakymų matrica: 11 raidžių, 8 eilutės mokymui
T = [eye(10), eye(10), eye(10), eye(10), eye(10)];
 % sukuriamas SBF tinklas duotiems P ir T sąryšiams
 tinklas = newrb(P,T,0,1,13); % 13 - neuronu skaicius
%% Tinklo patikra
% skaičiuojamas tinklo išėjimas požymiams iš 2 pvz. eilutės
P2 = P(:,11:20);
Y2 = sim(tinklas, P2);
% ieškoma, kuriame išėjime gauta didžiausia reikšmė
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaičiuosime raidžių skaičių - požymių P2 stulpelių skaičių
raidziu_sk = size(P2,2);
% rezultatą saugosime kintamajame ’atsakymas’
atsakymas = [];
for k = 1:raidziu_sk
switch b2(k)
case 1
atsakymas = [atsakymas, '1'];
case 2
atsakymas = [atsakymas, '2'];
case 3
atsakymas = [atsakymas, '3'];
case 4
atsakymas = [atsakymas, '4'];
case 5
atsakymas = [atsakymas, '5'];
case 6
atsakymas = [atsakymas, '6'];
case 7
atsakymas = [atsakymas, '7'];
case 8
atsakymas = [atsakymas, '8'];
case 9
atsakymas = [atsakymas, '9'];
case 10
atsakymas = [atsakymas, '0'];
end
end
 % pateikime rezultatą komandiniame lange
 disp(atsakymas)
 figure(7), text(0.1,0.5,atsakymas,'FontSize',38), axis off

pavadinimas = 'skaiciai11.jpg';
pozymiai_tinklo_mokymui = pozymiai_raidems_atpazinti(pavadinimas, 3);


 % požymiai iš celių masyvo perkeliami į matricą
P2 = cell2mat(pozymiai_tinklo_mokymui);
Y2 = sim(tinklas, P2);
% ieškoma, kuriame išėjime gauta didžiausia reikšmė
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaičiuosime raidžių skaičių - požymių P2 stulpelių skaičių
raidziu_sk = size(P2,2);
% rezultatą saugosime kintamajame ’atsakymas’
atsakymas = [];
for k = 1:raidziu_sk
switch b2(k)
case 1
atsakymas = [atsakymas, '1'];
case 2
atsakymas = [atsakymas, '2'];
case 3
atsakymas = [atsakymas, '3'];
case 4
atsakymas = [atsakymas, '4'];
case 5
atsakymas = [atsakymas, '5'];
case 6
atsakymas = [atsakymas, '6'];
case 7
atsakymas = [atsakymas, '7'];
case 8
atsakymas = [atsakymas, '8'];
case 9
atsakymas = [atsakymas, '9'];
case 10
atsakymas = [atsakymas, '0'];
end
end
 % pateikime rezultatą komandiniame lange
 disp(atsakymas)
 figure(15), text(0.1,0.5,atsakymas,'FontSize',38), axis off