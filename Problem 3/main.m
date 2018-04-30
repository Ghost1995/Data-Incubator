function main

    % Read Arizona Data
    opts = detectImportOptions('AZ_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    AZcleaned = readtable('AZ_cleaned.csv',opts);
    AZcleaned.stop_time = datetime(string(AZcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read California Data
    opts = detectImportOptions('CA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    CAcleaned = readtable('CA_cleaned.csv',opts);
    CAcleaned.stop_time = datetime(string(CAcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Colorado Data
    opts = detectImportOptions('CO_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    COcleaned = readtable('CO_cleaned.csv',opts);
    COcleaned.stop_time = datetime(string(COcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Connecticut Data
    opts = detectImportOptions('CT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    CTcleaned = readtable('CT_cleaned.csv',opts);
    CTcleaned.stop_time = datetime(string(CTcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Florida Data
    opts = detectImportOptions('FL_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    FLcleaned = readtable('FL_cleaned.csv',opts);
    FLcleaned.stop_time = datetime(string(FLcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Illinois Data
    opts = detectImportOptions('IL_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    ILcleaned = readtable('IL_cleaned.csv',opts);
    ILcleaned.stop_time = datetime(string(ILcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Iowa Data
    opts = detectImportOptions('IA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    IAcleaned = readtable('IA_cleaned.csv',opts);
    IAcleaned.stop_time = datetime(string(IAcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Maryland Data
    opts = detectImportOptions('MD_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    MDcleaned = readtable('MD_cleaned.csv',opts);
    MDcleaned.stop_time = datetime(string(MDcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Massachusetts Data
    opts = detectImportOptions('MA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    MAcleaned = readtable('MA_cleaned.csv',opts);
    MAcleaned.stop_time = datetime(string(MAcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Michigan Data
    opts = detectImportOptions('MI_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    MIcleaned = readtable('MI_cleaned.csv',opts);
    MIcleaned.stop_time = datetime(string(MIcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Mississippi Data
    opts = detectImportOptions('MS_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    MScleaned = readtable('MS_cleaned.csv',opts);
    MScleaned.stop_time = datetime(string(MScleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Missouri Data
    opts = detectImportOptions('MO_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    MOcleaned = readtable('MO_cleaned.csv',opts);
    MOcleaned.stop_time = datetime(string(MOcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Montana Data
    opts = detectImportOptions('MT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    MTcleaned = readtable('MT_cleaned.csv',opts);
    MTcleaned.stop_time = datetime(string(MTcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Nebraska Data
    opts = detectImportOptions('NE_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    NEcleaned = readtable('NE_cleaned.csv',opts);
    NEcleaned.stop_time = datetime(string(NEcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Nevada Data
    opts = detectImportOptions('NV_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    NVcleaned = readtable('NV_cleaned.csv',opts);
    NVcleaned.stop_time = datetime(string(NVcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read New Hampshire Data
    opts = detectImportOptions('NH_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    NHcleaned = readtable('NH_cleaned.csv',opts);
    NHcleaned.stop_time = datetime(string(NHcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read New Jersey Data
    opts = detectImportOptions('NJ_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    NJcleaned = readtable('NJ_cleaned.csv',opts);
    NJcleaned.stop_time = datetime(string(NJcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read North Carolina Data
    opts = detectImportOptions('NC_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    NCcleaned = readtable('NC_cleaned.csv',opts);
    NCcleaned.stop_time = datetime(string(NCcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read North Dakota Data
    opts = detectImportOptions('ND_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    NDcleaned = readtable('ND_cleaned.csv',opts);
    NDcleaned.stop_time = datetime(string(NDcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Ohio Data
    opts = detectImportOptions('OH_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    OHcleaned = readtable('OH_cleaned.csv',opts);
    OHcleaned.stop_time = datetime(string(OHcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Oregon Data
    opts = detectImportOptions('OR_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    ORcleaned = readtable('OR_cleaned.csv',opts);
    ORcleaned.stop_time = datetime(string(ORcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Rhode Island Data
    opts = detectImportOptions('RI_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    RIcleaned = readtable('RI_cleaned.csv',opts);
    RIcleaned.stop_time = datetime(string(RIcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read South Carolina Data
    opts = detectImportOptions('SC_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    SCcleaned = readtable('SC_cleaned.csv',opts);
    SCcleaned.stop_time = datetime(string(SCcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read South Dakota Data
    opts = detectImportOptions('SD_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    SDcleaned = readtable('SD_cleaned.csv',opts);
    SDcleaned.stop_time = datetime(string(SDcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Tennessee Data
    opts = detectImportOptions('TN_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    TNcleaned = readtable('TN_cleaned.csv',opts);
    TNcleaned.stop_time = datetime(string(TNcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Texas Data
    opts = detectImportOptions('TX_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    TXcleaned = readtable('TX_cleaned.csv',opts);
    TXcleaned.stop_time = datetime(string(TXcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Vermont Data
    opts = detectImportOptions('VT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    VTcleaned = readtable('VT_cleaned.csv',opts);
    VTcleaned.stop_time = datetime(string(VTcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Virginia Data
    opts = detectImportOptions('VA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    VAcleaned = readtable('VA_cleaned.csv',opts);
    VAcleaned.stop_time = datetime(string(VAcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Washington Data
    opts = detectImportOptions('WA_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    WAcleaned = readtable('WA_cleaned.csv',opts);
    WAcleaned.stop_time = datetime(string(WAcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Wisconsin Data
    opts = detectImportOptions('WI_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    WIcleaned = readtable('WI_cleaned.csv',opts);
    WIcleaned.stop_time = datetime(string(WIcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Wyoming Data
    opts = detectImportOptions('WY_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    WYcleaned = readtable('WY_cleaned.csv',opts);
    WYcleaned.stop_time = datetime(string(WYcleaned.stop_time),'InputFormat','HH:mm');
    

    
    
    
    
    
    
    
    
    % Read Vermont Data
    opts = detectImportOptions('VT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','violation','is_arrested'};
    VTcleaned = readtable('VT_cleaned.csv',opts);
    VTcleaned.stop_time = datetime(string(VTcleaned.stop_time),'InputFormat','HH:mm');

    % Proportion of traffic stops in Montana involving male drivers
    MTgenders = char(MTcleaned.driver_gender);
    MTmale = sum(MTgenders == 'M');
    disp([num2str(MTmale/length(MTgenders),'%.10f') ' proportion of traffic stops in Montana involved male drivers.'])

    % Likeliness of getting arrested in Montana during a traffic stop if you have out of state plates
    MToutOfState = char(MTcleaned.out_of_state);
    MTarrests = char(MTcleaned.is_arrested);
    MTarrests_act = MTarrests(:,1) == 'T';
    MToutState = sum(MToutOfState(MTarrests_act,1) == 'T');
    MTinState = sum(MToutOfState(MTarrests_act,1) == 'F');
    disp(['One is ' num2str(MToutState/MTinState,'%.10f') ' times more likely to be arrested in Montana during a traffic stop if one has out of state plates.'])

    % The value of the chi-squared test statistic
    totalMTdata = length(MTarrests);
    MTarrests_act = sum(MTarrests_act);
    VTarrests = char(VTcleaned.is_arrested);
    totalVTdata = length(VTarrests);
    VTarrests_act = sum(VTarrests(:,1) == 'T');
    arrestsProp = (MTarrests_act + VTarrests_act)/(totalMTdata + totalVTdata);
    MTarrests_exp = totalMTdata*arrestsProp;
    VTarrests_exp = totalVTdata*arrestsProp;
    % Chi-square test
    observed = [MTarrests_act totalMTdata-MTarrests_act VTarrests_act totalVTdata-VTarrests_act];
    expected = [MTarrests_exp totalMTdata-MTarrests_exp VTarrests_exp totalVTdata-VTarrests_exp];
    chi2stat = sum(((observed-expected).^2)./expected);
    p = 1 - chi2cdf(chi2stat,1);
    if p > 0.05
        disp('The proportions of arrests in Montana and Vermont are equal.')
    else
        disp('The proportions of arrests in Montana and Vermont are not equal.')
    end
    disp(['The value of the chi-squared test statistic is ' num2str(chi2stat,'%.10f') '.'])

    % Proportion of traffic stops in Montana resulting in speeding violations
    MTviolations = char(MTcleaned.violation);
    MTspeeding = 0;
    for i = 1:length(MTviolations)
        if contains(MTviolations(i,:),'Speeding','IgnoreCase',true)
            MTspeeding = MTspeeding + 1;
        end
    end
    disp([num2str(MTspeeding/length(MTviolations),'%.10f') ' proportion of traffic stops in Montana resulted in speeding violations.'])

    % Likeliness of a traffic stop in Montana resulting in a DUI than a traffic stop in Vermont
    MTdui = 0;
    for i = 1:length(MTviolations)
        if contains(MTviolations(i,:),'DUI','IgnoreCase',true)
            MTdui = MTdui + 1;
        end
    end
    VTviolations = char(VTcleaned.violation);
    VTdui = 0;
    for i = 1:length(VTviolations)
        if contains(VTviolations(i,:),'DUI','IgnoreCase',true)
            VTdui = VTdui + 1;
        end
    end
    disp(['A traffic stop in Montana is ' num2str((MTdui/length(MTviolations))/(VTdui/length(VTviolations)),'%.10f') ' times more likely to result in a DUI than a traffic stop in Vermont.'])

    % Average manufacture year of vehicles involved in traffic stops in Montana in 2020
    MTdate = datevec(MTcleaned.stop_date);
    MTvehicleYear = MTcleaned.vehicle_year;
    uniqueMTdate = unique(MTdate(:,1));
    uniqueMTdate = uniqueMTdate(~isnan(uniqueMTdate));
    for i = 1:length(uniqueMTdate)
        uniqueMTdate(i,2) = mean(MTvehicleYear((MTdate==uniqueMTdate(i,1))&(~isnan(MTvehicleYear))));
    end
    linearModel = fitlm(uniqueMTdate(:,1),uniqueMTdate(:,2));
    disp(['Average manufacture year of vehicles involved in traffic stops in Montana in 2020 is ' num2str(predict(linearModel,2020),'%.10f') '.'])
    disp(['The p-value of the linear regression is ' num2str(coefTest(linearModel),'%.10f') '.'])

    % Maximum difference in the total number of stops that occurred at various hours
    MTtime = datevec(MTcleaned.stop_time);
    VTtime = datevec(VTcleaned.stop_time);
    numStops = zeros(24,1);
    for i = 0:23
        numStops(i+1) = sum(MTtime(~isnan(MTtime(:,4)),4)==i) + sum(VTtime(~isnan(VTtime(:,4)),4)==i);
    end
    disp(['Most number of traffic stops occurred at ' num2str(find(numStops==max(numStops))-1,'%02d') '00 hrs.'])
    disp(['Least number of traffic stops occurred at ' num2str(find(numStops==min(numStops))-1,'%02d') '00 hrs.'])
    disp(['The difference in the total number of stops that occurred in these two hours is ' num2str(max(numStops) - min(numStops)) '.'])

    % Estimate the areas of the counties in Montana
    MTcountyFIPS = MTcleaned.county_fips;
    MTlat = MTcleaned.lat;
    MTlon = MTcleaned.lon;
    uniqueMTfips = unique(MTcountyFIPS);
    uniqueMTfips = uniqueMTfips(~isnan(uniqueMTfips));
    latLon = cell(length(uniqueMTfips),1);
    stdLatLon = zeros(length(uniqueMTfips),2);
    meanLatLon = zeros(length(uniqueMTfips),2);
    areaCounty = zeros(length(uniqueMTfips),1);
    figure
    hold on
    t = linspace(0,2*pi);
    for i = 1:length(uniqueMTfips)
        index = (MTcountyFIPS==uniqueMTfips(i))&(~isnan(MTlat))&(~isnan(MTlon));
        latLon{i} = [MTlat(index), MTlon(index)];
        meanLatLon(i,:) = mean(latLon{i});
        stdLatLon(i,:) = std(latLon{i});
        diff = latLon{i}-meanLatLon(i,:);
        nonIndex = (abs(diff(:,1)) > 3*abs(stdLatLon(i,1)))|(abs(diff(:,2)) > 3*abs(stdLatLon(i,2)));
        latLon{i}(nonIndex,:) = [];
        meanLatLon(i,:) = mean(latLon{i});
        stdLatLon(i,:) = std(latLon{i});
        switch rem(i,6)
            case 1
                patch(meanLatLon(i,1)+stdLatLon(i,1)*cos(t),meanLatLon(i,2)+stdLatLon(i,2)*sin(t),'r')
            case 2
                patch(meanLatLon(i,1)+stdLatLon(i,1)*cos(t),meanLatLon(i,2)+stdLatLon(i,2)*sin(t),'g')
            case 3
                patch(meanLatLon(i,1)+stdLatLon(i,1)*cos(t),meanLatLon(i,2)+stdLatLon(i,2)*sin(t),'b')
            case 4
                patch(meanLatLon(i,1)+stdLatLon(i,1)*cos(t),meanLatLon(i,2)+stdLatLon(i,2)*sin(t),'y')
            case 5
                patch(meanLatLon(i,1)+stdLatLon(i,1)*cos(t),meanLatLon(i,2)+stdLatLon(i,2)*sin(t),'m')
            case 0
                patch(meanLatLon(i,1)+stdLatLon(i,1)*cos(t),meanLatLon(i,2)+stdLatLon(i,2)*sin(t),'c')
        end
        areaCounty(i) = pi*stdLatLon(i,1)*stdLatLon(i,2)*111*111.321*cosd(meanLatLon(i,1));
    end
    hold off
    disp(['The area of the largest county is ' num2str(max(areaCounty),'%.10f') ' sq.km.'])

end