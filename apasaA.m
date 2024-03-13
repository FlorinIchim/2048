function tabla_noua=apasaA(tabla)
    [nr_linii, nr_coloane] =size(tabla);
    tabla_noua= tabla;
    global scor;
    for linie = 1:nr_linii
        valori_linie=nonzeros(tabla(linie,:));
        adauga_zero=nr_coloane-length(valori_linie);
        valori_linie= [valori_linie;zeros(adauga_zero,1)];
        for c=1:nr_coloane-1
            if valori_linie(c)==valori_linie(c+1)
                scor = scor+valori_linie(c);
                valori_linie(c)=2*valori_linie(c);
                valori_linie(c+1)=0;
            end
        end
        valori_linie=nonzeros(valori_linie);
        adauga_zero=nr_coloane-length(valori_linie);
        valori_linie =[valori_linie;zeros(adauga_zero,1)];
        tabla_noua(linie,:)=valori_linie;
    end
end