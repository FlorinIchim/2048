function tabla_noua=apasaS(tabla)
    global scor;
    tabla_transpusa=tabla';
    tabla_transpusa_noua=apasaD(tabla_transpusa);
    tabla_noua=tabla_transpusa_noua';
end