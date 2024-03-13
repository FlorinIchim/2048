function status = verificaVictorieGameOver(tabla)
status = 2;
for linie = 1:4
    for coloana = 1:4
        if tabla(linie,coloana) == 2048
            status = 1; 
            return
        end
        if status == 2 && tabla(linie,coloana) == 0
            status = 0;
        end
    end
end