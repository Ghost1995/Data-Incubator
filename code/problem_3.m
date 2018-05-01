function problem_3

    % Initiate data variables
    uniqueViolations = {'Other'};
    totalViolationsYear = zeros(22,31);
    totalViolationsWeek = zeros(7,24,60);
    
    % Read Arizona Data
    opts = detectImportOptions('AZ_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    AZcleaned = readtable('AZ_cleaned.csv',opts);
    AZcleaned.stop_time = datetime(string(AZcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(AZcleaned,1,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read California Data
    opts = detectImportOptions('CA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    CAcleaned = readtable('CA_cleaned.csv',opts);
    CAcleaned.stop_time = datetime(string(CAcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(CAcleaned,2,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Colorado Data
    opts = detectImportOptions('CO_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    COcleaned = readtable('CO_cleaned.csv',opts);
    COcleaned.stop_time = datetime(string(COcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(COcleaned,3,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Connecticut Data
    opts = detectImportOptions('CT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    CTcleaned = readtable('CT_cleaned.csv',opts);
    CTcleaned.stop_time = datetime(string(CTcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(CTcleaned,4,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Florida Data
    opts = detectImportOptions('FL_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    FLcleaned = readtable('FL_cleaned.csv',opts);
    FLcleaned.stop_time = datetime(string(FLcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(FLcleaned,5,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Illinois Data
    opts = detectImportOptions('IL_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    ILcleaned = readtable('IL_cleaned.csv',opts);
    ILcleaned.stop_time = datetime(string(ILcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(ILcleaned,6,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Iowa Data
    opts = detectImportOptions('IA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    IAcleaned = readtable('IA_cleaned.csv',opts);
    IAcleaned.stop_time = datetime(string(IAcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(IAcleaned,7,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Maryland Data
    opts = detectImportOptions('MD_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    MDcleaned = readtable('MD_cleaned.csv',opts);
    MDcleaned.stop_time = datetime(string(MDcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(MDcleaned,8,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Massachusetts Data
    opts = detectImportOptions('MA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    MAcleaned = readtable('MA_cleaned.csv',opts);
    MAcleaned.stop_time = datetime(string(MAcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(MAcleaned,9,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Michigan Data
    opts = detectImportOptions('MI_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    MIcleaned = readtable('MI_cleaned.csv',opts);
    MIcleaned.stop_time = datetime(string(MIcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(MIcleaned,10,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Mississippi Data
    opts = detectImportOptions('MS_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    MScleaned = readtable('MS_cleaned.csv',opts);
    MScleaned.stop_time = datetime(string(MScleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(MScleaned,11,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Missouri Data
    opts = detectImportOptions('MO_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    MOcleaned = readtable('MO_cleaned.csv',opts);
    MOcleaned.stop_time = datetime(string(MOcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(MOcleaned,12,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Montana Data
    opts = detectImportOptions('MT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    MTcleaned = readtable('MT_cleaned.csv',opts);
    MTcleaned.stop_time = datetime(string(MTcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(MTcleaned,13,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Nebraska Data
    opts = detectImportOptions('NE_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    NEcleaned = readtable('NE_cleaned.csv',opts);
    NEcleaned.stop_time = datetime(string(NEcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(NEcleaned,14,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Nevada Data
    opts = detectImportOptions('NV_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    NVcleaned = readtable('NV_cleaned.csv',opts);
    NVcleaned.stop_time = datetime(string(NVcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(NVcleaned,15,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read New Hampshire Data
    opts = detectImportOptions('NH_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    NHcleaned = readtable('NH_cleaned.csv',opts);
    NHcleaned.stop_time = datetime(string(NHcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(NHcleaned,16,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read New Jersey Data
    opts = detectImportOptions('NJ_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    NJcleaned = readtable('NJ_cleaned.csv',opts);
    NJcleaned.stop_time = datetime(string(NJcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(NJcleaned,17,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read North Carolina Data
    opts = detectImportOptions('NC_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    NCcleaned = readtable('NC_cleaned.csv',opts);
    NCcleaned.stop_time = datetime(string(NCcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(NCcleaned,18,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read North Dakota Data
    opts = detectImportOptions('ND_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    NDcleaned = readtable('ND_cleaned.csv',opts);
    NDcleaned.stop_time = datetime(string(NDcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(NDcleaned,19,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Ohio Data
    opts = detectImportOptions('OH_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    OHcleaned = readtable('OH_cleaned.csv',opts);
    OHcleaned.stop_time = datetime(string(OHcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(OHcleaned,20,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Oregon Data
    opts = detectImportOptions('OR_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    ORcleaned = readtable('OR_cleaned.csv',opts);
    ORcleaned.stop_time = datetime(string(ORcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(ORcleaned,21,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Rhode Island Data
    opts = detectImportOptions('RI_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    RIcleaned = readtable('RI_cleaned.csv',opts);
    RIcleaned.stop_time = datetime(string(RIcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(RIcleaned,22,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read South Carolina Data
    opts = detectImportOptions('SC_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    SCcleaned = readtable('SC_cleaned.csv',opts);
    SCcleaned.stop_time = datetime(string(SCcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(SCcleaned,23,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read South Dakota Data
    opts = detectImportOptions('SD_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    SDcleaned = readtable('SD_cleaned.csv',opts);
    SDcleaned.stop_time = datetime(string(SDcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(SDcleaned,24,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Tennessee Data
    opts = detectImportOptions('TN_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    TNcleaned = readtable('TN_cleaned.csv',opts);
    TNcleaned.stop_time = datetime(string(TNcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(TNcleaned,25,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Texas Data
    opts = detectImportOptions('TX_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    TXcleaned = readtable('TX_cleaned.csv',opts);
    TXcleaned.stop_time = datetime(string(TXcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(TXcleaned,26,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Vermont Data
    opts = detectImportOptions('VT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    VTcleaned = readtable('VT_cleaned.csv',opts);
    VTcleaned.stop_time = datetime(string(VTcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(VTcleaned,27,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Virginia Data
    opts = detectImportOptions('VA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    VAcleaned = readtable('VA_cleaned.csv',opts);
    VAcleaned.stop_time = datetime(string(VAcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(VAcleaned,28,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Washington Data
    opts = detectImportOptions('WA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    WAcleaned = readtable('WA_cleaned.csv',opts);
    WAcleaned.stop_time = datetime(string(WAcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(WAcleaned,29,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Wisconsin Data
    opts = detectImportOptions('WI_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    WIcleaned = readtable('WI_cleaned.csv',opts);
    WIcleaned.stop_time = datetime(string(WIcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(WIcleaned,30,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    % Read Wyoming Data
    opts = detectImportOptions('WY_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation'};
    WYcleaned = readtable('WY_cleaned.csv',opts);
    WYcleaned.stop_time = datetime(string(WYcleaned.stop_time),'InputFormat','HH:mm');
    [uniqueViolations,totalViolationsYear,totalViolationsWeek] = findViolations(WYcleaned,31,uniqueViolations,totalViolationsYear,totalViolationsWeek);
    
    uniqueViolations = uniqueViolations([1:11,13:15]);
    totalViolationsYear(:,:,1) = totalViolationsYear(:,:,1) + totalViolationsYear(:,:,12);
    totalViolationsYear(:,:,12) = [];
    totalViolationsWeek(:,:,:,1) = totalViolationsWeek(:,:,:,1) + totalViolationsWeek(:,:,:,12);
    totalViolationsWeek(:,:,:,12) = [];
    
    totalStops = sum(totalViolationsYear,3);
    totalStops = totalStops(2:end,:)./totalStops(1:end-1,:);
    stopsRatio = zeros(31,1);
    for i = 1:31
        stopsRatio(i) = mean(totalStops(~isnan(totalStops(:,i)),i));
    end
    barh(categorical({'AZ','CA','CO','CT','FL','IL','IA','MD','MA','MI',...
                      'MS','MO','MT','NE','NV','NH','NJ','NC','ND','OH',...
                      'OR','RI','SC','SD','TN','TX','VT','VA','WA','WI','WY'}),stopsRatio')
    xlabel('Ratio of Change')
    ylabel('States')
    title('Ratio of Change in Number of Stops from 1996 - 2017 over States')
    
    totalStops = sum(totalViolationsYear,2);
    totalStops = reshape(totalStops,size(totalStops,1),size(totalStops,3));
    totalStops = totalStops(2:end,:)./totalStops(1:end-1,:);
    stopsRatio = zeros(14,1);
    for i = 1:14
        stopsRatio(i) = mean(totalStops(~isnan(totalStops(:,i)),i));
    end
    barh(categorical(uniqueViolations),stopsRatio')
    xlabel('Ratio of Change')
    ylabel('Violations')
    title('Ratio of Change in Number of Stops from 1996 - 2017 over Violations')
    
    totalStops = sum(sum(totalViolationsWeek,4),3);
    bar(totalStops)
    xlabel('Hours of the Day')
    ylabel('Number of Stops')
    title('Number of Stops per Hour of the Day')
    legend('Sun','Mon','Tues','Wed','Thurs','Fri','Sat')
    
end

function [uniqueViolations, totalViolationsYear, totalViolationsWeek] = findViolations(stateData, state, uniqueViolations, totalViolationsYear, totalViolationsWeek)

    stateViolations = char(stateData.violation);
    stateDates = datevec(stateData.stop_date);
    stateTimes = datevec(stateData.stop_time);
    ind = any(isnan(stateDates) | isnan(stateTimes),2);
    stateViolations(ind,:) = [];
    stateDates(ind,:) = [];
    stateTimes(ind,:) = [];
    stateDates = [stateDates(:,1:3),stateTimes(:,4:6)];
    for i = 1:length(stateViolations)
        year = stateDates(i,1) - 1995;
        strDate = [num2str(stateDates(i,1),'%04d') '-' num2str(stateDates(i,2),'%02d') '-' num2str(stateDates(i,3),'%02d')];
        if stateViolations(i,1) == ' '
            totalViolationsYear(year,state,1) = totalViolationsYear(year,state,1) + 1;
            totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,1) = totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,1) + 1;
        else
            violation = [];
            count = 0;
            for j = 1:length(stateViolations(i,:))
                if stateViolations(i,j) == ' '
                    count = count + 1;
                    if count > 1
                        break;
                    end
                elseif stateViolations(i,j) == ','
                    if any(contains(uniqueViolations,violation,'IgnoreCase',true))
                        index = find(contains(uniqueViolations,violation,'IgnoreCase',true));
                        totalViolationsYear(year,state,index) = totalViolationsYear(year,state,index) + 1;
                        totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,index) = totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,index) + 1;
                    else
                        uniqueViolations{end+1} = violation;
                        totalViolationsYear = cat(3,totalViolationsYear,zeros(22,31));
                        totalViolationsYear(year,state,end) = totalViolationsYear(year,state,end) + 1;
                        totalViolationsWeek = cat(4,totalViolationsWeek,zeros(7,24,60));
                        totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,end) = totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,end) + 1;
                    end
                    violation = [];
                    count = 0;
                else
                    if count == 0
                        violation = [violation, stateViolations(i,j)];
                    else
                        violation = [violation, ' ', stateViolations(i,j)];
                        count = 0;
                    end
                end
            end
            if any(contains(uniqueViolations,violation,'IgnoreCase',true))
                index = find(contains(uniqueViolations,violation,'IgnoreCase',true));
                totalViolationsYear(year,state,index) = totalViolationsYear(year,state,index) + 1;
                totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,index) = totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,index) + 1;
            else
                uniqueViolations{end+1} = violation;
                totalViolationsYear = cat(3,totalViolationsYear,zeros(22,31));
                totalViolationsYear(year,state,end) = totalViolationsYear(year,state,end) + 1;
                totalViolationsWeek = cat(4,totalViolationsWeek,zeros(7,24,60));
                totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,end) = totalViolationsWeek(weekday(strDate),stateDates(i,4)+1,stateDates(i,5)+1,end) + 1;
            end
        end
    end

end