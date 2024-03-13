function tabla_noua=adauga_blocV2(tabla,exista_locuri_libere)
    if exista_locuri_libere==1
    tabla_noua=tabla;
    return;
    end
    [linie_random,coloana_random] =gaseste_loc_liber(tabla);
    tabla_noua= tabla;
    chance = randi([1 4],1,1);
    if (chance==1)
    tabla_noua(linie_random,coloana_random)=4;
    else tabla_noua(linie_random,coloana_random)=2;
    end;
end


