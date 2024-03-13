function [linie_random, coloana_random] = gaseste_loc_liber(tabla)
    [linii_random, coloane_random] = find(tabla == 0);
    index_random = randi(length(linii_random));
    linie_random = linii_random(index_random);
    coloana_random = coloane_random(index_random);
end