global mutari;
global scor;
for linie = 1:4
    for coloana = 1:4
        patrat = grup_patrate(linie,coloana);
        Text = grup_texte(linie,coloana);
        Text.FontName = 'Arial';
        if tabla(linie,coloana) == 0
            patrat.FaceColor = 'w';
            Text.String =' ';
        else
            if tabla(linie,coloana) == 2
                patrat.FaceColor = [1 1 0];
                Text.Color = 'k';
                Text.FontSize = 40;
            elseif tabla(linie,coloana) == 4
                patrat.FaceColor = [1 0.8 0];
                Text.Color = 'k';
                Text.FontSize = 40;
            else
                Text.Color = 'w';
                if tabla(linie,coloana) == 8
                    patrat.FaceColor = [1 0.6 0];
                    Text.FontSize = 40;
                elseif tabla(linie,coloana) == 16
                    patrat.FaceColor = [1 0.4 0];
                    Text.FontSize = 30;
                elseif tabla(linie,coloana) == 32
                    patrat.FaceColor = [1 0.2 0];
                    Text.FontSize = 30;
                elseif tabla(linie,coloana) == 64
                    patrat.FaceColor = [1 0 0];
                    Text.FontSize = 30;
                elseif tabla(linie,coloana) == 128
                    patrat.FaceColor = [1 0 1];
                    Text.FontSize = 25;
                elseif tabla(linie,coloana) == 256
                    patrat.FaceColor = [0.5 0.2 0.5];
                    Text.FontSize = 25;
                elseif tabla(linie,coloana) == 512
                    patrat.FaceColor = [0 0.5 0.7];
                    Text.FontSize = 25;
                elseif tabla(linie,coloana) == 1024
                    patrat.FaceColor = [0 0 1];
                    Text.FontSize = 20;
                else
                    patrat.FaceColor = [0 0 0];
                    Text.FontSize = 20;
                end
            end
            Text.String = num2str(tabla(linie,coloana));
        end
    end
end
afisare_mutari.String = sprintf ('Mutari = %d', mutari);
afisare_scor.String = sprintf ('Scor = %d', scor);
drawnow;