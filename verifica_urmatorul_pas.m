function [status_W, status_S, status_A, status_D] = verifica_urmatorul_pas(tabla, mutare_W, mutare_S, mutare_A, mutare_D) 
status_W = 1;
status_S = 1;
status_A = 1;
status_D = 1;

if verificare_identic(tabla,mutare_W) == 1
    status_W = 0;
end
if verificare_identic(tabla,mutare_S) == 1
    status_S = 0;
end
if verificare_identic(tabla,mutare_A) == 1
    status_A = 0;
end
if verificare_identic(tabla,mutare_D) == 1
    status_D = 0;
end