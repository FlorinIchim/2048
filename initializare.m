tabla = zeros(4,4);
linie1 = randi([1,4],1,1);
coloana1 = randi([1,4],1,1);
linie2 = randi([1,4],1,1);
coloana2 = randi([1,4],1,1);
tabla(linie1,coloana1) = 2;
tabla(linie2,coloana2) = 2;

global GUIOutput;
figure('name', '2048');
title('2048');
Buton_W = uicontrol('String','U','Position', [45 50 30 30], 'CallBack', 'GUIOutput = 1');
Buton_A = uicontrol('String', 'L', 'Position', [10 10 30 30], 'CallBack', 'GUIOutput = 2');
Buton_D = uicontrol('String', 'R','Position', [80 10 30 30], 'CallBack', 'GUIOutput = 3');
Buton_S = uicontrol('String', 'D','Position', [45 10 30 30],'CallBack', 'GUIOutput = 4');
Buton_restart = uicontrol('String','Resetare','Position', [500 10 50 30], 'CallBack', 'GUIOutput = 5');
Buton_iesire = uicontrol('String','Iesire','Position',[500 40 50 30], 'CallBack', 'GUIOutput = 6');

afisare_scor = text (0.8, 4.8, 'Scor = 0');
afisare_mutari = text (0.8, 5, 'Mutări = 0');
grup_patrate = gobjects(4,4);
grup_texte = gobjects(4,4);

for x = 1:4
    for y = 1:4
        grup_patrate(x,y) = rectangle('Position', [y+1,5-x,0.9,0.9],'FaceColor','w');
        grup_texte(x,y) = text(y+1+0.23, 5-x+0.45,' ');
    end
end
axis([1 5 1 5]);
axis equal;
axis off;

executare_mutare;