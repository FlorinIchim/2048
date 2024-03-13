function tabla_noua= apasaW(tabla)
    global scor;
    tabla_transpusa=tabla';
    tabla_transpusa_noua=apasaA(tabla_transpusa);
    tabla_noua = tabla_transpusa_noua';
end