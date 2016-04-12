AccData = [];
for i = 1:100
    tmpAccData = load(strcat('../dataFixTrain/', int2str(i), '.dat'));
    tmpAccData = tmpAccData.accruacyM;
    AccData = [AccData;tmpAccData];
end


AccData = sortrows(AccData);

% Print the data
save("-text", "SVM_Data", "AccData");

constructedData1 = [];
constructedData2 = [];
constructedData3 = [];
for i = 1:92
%    i
%    i * 15
    data = AccData((i - 1) * 100 + 1 : i * 100, :);
    constructedData1 = [constructedData1; mean(data)];
    constructedData2 = [constructedData2; min(data)];
    constructedData3 = [constructedData3; max(data)];
end

%for i = 1:3
    
	%LLBs
	figure(1);
    plot( ...
            constructedData1(:,1), constructedData1(:, 1 * 6 - 4), '-', ... % Avg
            constructedData2(:,1), constructedData2(:, 1 * 6 - 4), '-');   % Min
            %constructedData3(:,1), constructedData3(:, i * 6 - 4) ... );
    xlabel('Num. of Trials used for Training');
	ylabel('Accuracy');
	title('LLB Classifier Accuracy in Late Failure Detection');
	legend('Avg. Val.','Min. Val.',"location","southeast");
    print(gcf, '-depsc', 'LLB_Plot', '.eps');
	%print(gcf, '-depsc', 'LLB_Plot', '.png');
	pause
	
	%LLBs
	figure(2);
    plot( ...
            constructedData1(:,1), constructedData1(:, 2 * 6 - 4), '-', ... % Avg
            constructedData2(:,1), constructedData2(:, 2 * 6 - 4), '-');   % Min
            %constructedData3(:,1), constructedData3(:, i * 6 - 4) ... );
    xlabel('Num. of Trials used for Training');
	ylabel('Accuracy');
	title('MC Classifier Accuracy in Late Failure Detection');
    legend('Avg. Val.','Min. Val.',"location","southeast");
	print(gcf, '-depsc', 'MC_Plot', '.eps');
	%print(gcf, '-depsc', 'MC_Plot', '.png');	
	
	pause
	%LLBs
	figure(3);
    plot( ...
            constructedData1(:,1), constructedData1(:, 3 * 6 - 4), '-', ... % Avg
            constructedData2(:,1), constructedData2(:, 3 * 6 - 4), '-');   % Min
            %constructedData3(:,1), constructedData3(:, i * 6 - 4) ... );
    xlabel('Num. of Trials used for Training');
	ylabel('Accuracy');
	title('P Classifier Accuracy in Early Failure Detection');
	legend('Avg. Val.','Min. Val.',"location","southeast");   
	print(gcf, '-depsc', 'P_Plot', '.eps');
	%print(gcf, '-depsc', 'P_Plot', '.png');	
%end
pause
