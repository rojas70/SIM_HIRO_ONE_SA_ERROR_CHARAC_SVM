data = [];
for i = 10:190
    tmpData = constructOneData (strcat('../', int2str(i), '.dat'));
    strcat('../', int2str(i), '.dat')
    data = [data; tmpData];
end

for i = 1:6
        gcf = figure(i);
        plot( ...
        data(:, 1), data(:, i * 3 + 1) ...
        %data(:, 1), data(:, i * 3 + 2), ...
        %data(:, 1), data(:, i * 3 + 3) ...
        );
        print(gcf, '-depsc', strcat(int2str(i), '.eps'));
end

data
pause

