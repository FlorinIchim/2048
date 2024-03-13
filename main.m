initializare;
input = 0;
global GUIOutput;
GUIOutput = 0;
status_W = 1; 
status_S = 1; 
status_A = 1; 
status_D = 1;
mutare_efectuata = 0; 
global mutari;
global scor;
scor = 0;
mutari = 0;
while 1
    status = verificaVictorieGameOver(tabla);
    if status == 1 
        questdlg ('Felicitări! Ai câștigat! Apasă butonul Restart și încearcă din nou.','Victorie!!!','OK', 'OK');
    end
    mutare_W = apasaW(tabla);
    mutare_S = apasaS(tabla);
    mutare_A = apasaA(tabla);
    mutare_D = apasaD(tabla); 
    [status_W, status_S, status_A, status_D] = verifica_urmatorul_pas(tabla, mutare_W, mutare_S, mutare_A, mutare_D);
    if status_W == 0 && status_S == 0 && status_A == 0 && status_D == 0
        questdlg ('Îmi pare rău, ai pierdut!. Apasă butonul Restart pentru a încerca din nou','Game Over','OK', 'OK');
        status = 3;
    end
    waitforbuttonpress;
    pause(0.3);
    input = GUIOutput;
    mutare_efectuata = 0;
    switch input
        case 1
            tabla = mutare_W;
            if status_W == 1
                mutare_efectuata = 1;
            end
        case 2
            tabla = mutare_A;
            if status_A == 1
                mutare_efectuata = 1;
            end
        case 3
            tabla = mutare_D;
            if status_D == 1
                mutare_efectuata = 1;
            end
        case 4
            tabla = mutare_S;
            if status_S == 1
                mutare_efectuata = 1;
            end
        case 5
            clf('reset');
            initializare;
            mutari = 0;
            scor = 0;
        case 6 
            cla;
            axis ([1 5 1 5]);
            mutari = 0;
            scor = 0;
            text (0.5, 3, 'A fost un joc pe cinste!', 'FontName', 'Arial', 'FontSize', 30);
            pause(1.5);
            close;
            return;
    end
    if input ~= 5 && input ~= 0 && mutare_efectuata == 1
        tabla = adauga_blocV2(tabla, status);
        mutari = mutari + 1;
    end
    executare_mutare;
end