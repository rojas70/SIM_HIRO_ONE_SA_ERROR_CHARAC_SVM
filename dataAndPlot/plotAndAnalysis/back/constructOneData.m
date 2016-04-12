
function oneData = constructOneData (datPath)
    originData = load(datPath);
    originData = originData.accruacyM;
    caseNum = size(originData, 2) / 6;
    llbWhole = [];
    llbApp = [];

    mcWhole = [];
    mcApp = [];

    pWhole = [];
    pApp = [];


    for i = 1:caseNum
        first = (i - 1) * 6 + 1;
        last  = i * 6          ;

        caseData = originData(:, first : last);
        llbWhole = [llbWhole;caseData(1, :)];
        llbApp = [llbApp;caseData(2, :)];

        mcWhole = [mcWhole;caseData(3, :)];
        mcApp = [mcApp;caseData(4, :)];

        pWhole = [pWhole;caseData(5, :)];
        pApp = [pApp;caseData(6, :)];
    end

    CaseNum = llbWhole(1, 1);
    successNum = llbWhole(1, 3);
    failureNum = llbWhole(1, 5);

    llbWholeAvg        = mean(llbWhole(:, 2));
    llbWholeSuccessAvg = mean(llbWhole(:, 4));
    llbWholeFailureAvg = mean(llbWhole(:, 6));

    llbWholeMax        = max(llbWhole(:, 2));
    llbWholeSuccessMax = max(llbWhole(:, 4));
    llbWholeFailureMax = max(llbWhole(:, 6));

    llbWholeMin        = min(llbWhole(:, 2));
    llbWholeSuccessMin = min(llbWhole(:, 4));
    llbWholeFailureMin = min(llbWhole(:, 6));

    llbAppAvg        = mean(llbApp(:, 2));
    llbAppSuccessAvg = mean(llbApp(:, 4));
    llbAppFailureAvg = mean(llbApp(:, 6));

    llbAppMax        = max(llbApp(:, 2));
    llbAppSuccessMax = max(llbApp(:, 4));
    llbAppFailureMax = max(llbApp(:, 6));

    llbAppMin        = min(llbApp(:, 2));
    llbAppSuccessMin = min(llbApp(:, 4));
    llbAppFailureMin = min(llbApp(:, 6));

    mcWholeAvg        = mean(mcWhole(:, 2));
    mcWholeSuccessAvg = mean(mcWhole(:, 4));
    mcWholeFailureAvg = mean(mcWhole(:, 6));

    mcWholeMax        = max(mcWhole(:, 2));
    mcWholeSuccessMax = max(mcWhole(:, 4));
    mcWholeFailureMax = max(mcWhole(:, 6));

    mcWholeMin        = min(mcWhole(:, 2));
    mcWholeSuccessMin = min(mcWhole(:, 4));
    mcWholeFailureMin = min(mcWhole(:, 6));

    mcAppAvg        = mean(mcApp(:, 2));
    mcAppSuccessAvg = mean(mcApp(:, 4));
    mcAppFailureAvg = mean(mcApp(:, 6));

    mcAppMax        = max(mcApp(:, 2));
    mcAppSuccessMax = max(mcApp(:, 4));
    mcAppFailureMax = max(mcApp(:, 6));

    mcAppMin        = min(mcApp(:, 2));
    mcAppSuccessMin = min(mcApp(:, 4));
    mcAppFailureMin = min(mcApp(:, 6));

    pWholeAvg        = mean(pWhole(:, 2));
    pWholeSuccessAvg = mean(pWhole(:, 4));
    pWholeFailureAvg = mean(pWhole(:, 6));

    pWholeMax        = max(pWhole(:, 2));
    pWholeSuccessMax = max(pWhole(:, 4));
    pWholeFailureMax = max(pWhole(:, 6));

    pWholeMin        = min(pWhole(:, 2));
    pWholeSuccessMin = min(pWhole(:, 4));
    pWholeFailureMin = min(pWhole(:, 6));

    pAppAvg        = mean(pApp(:, 2));
    pAppSuccessAvg = mean(pApp(:, 4));
    pAppFailureAvg = mean(pApp(:, 6));

    pAppMax        = max(pApp(:, 2));
    pAppSuccessMax = max(pApp(:, 4));
    pAppFailureMax = max(pApp(:, 6));

    pAppMin        = min(pApp(:, 2));
    pAppSuccessMin = min(pApp(:, 4));
    pAppFailureMin = min(pApp(:, 6));

    oneData = [CaseNum, successNum, failureNum, ...
                llbWholeAvg, llbWholeSuccessAvg, llbWholeFailureAvg, ...
                llbAppAvg, llbAppSuccessAvg, llbAppFailureAvg, ...
                mcWholeAvg, mcWholeSuccessAvg, mcWholeFailureAvg, ...
                mcAppAvg, mcAppSuccessAvg, mcAppFailureAvg, ...
                pWholeAvg, pWholeSuccessAvg, pWholeFailureAvg, ...
                pAppAvg, pAppSuccessAvg, pAppFailureAvg ];

%    oneData

end
