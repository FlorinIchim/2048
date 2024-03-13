function status = verificare_identic(tabla_veche,tabla_noua)

status = 1;
for linie = 1:4
    for coloana = 1:4
        if tabla_veche(linie,coloana) ~= tabla_noua(linie,coloana)
            status = 0;
            return
        end
    end
end