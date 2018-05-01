function problem_2

    % Read Montana Data
    opts = detectImportOptions('MT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_date','stop_time','county_fips','driver_gender','violation','is_arrested','lat','lon','out_of_state','vehicle_year'};
    MTcleaned = readtable('MT_cleaned.csv',opts);
    MTcleaned.stop_time = datetime(string(MTcleaned.stop_time),'InputFormat','HH:mm');
    
    % Read Vermont Data
    opts = detectImportOptions('VT_cleaned.csv');
    opts.SelectedVariableNames = {'stop_time','violation','is_arrested'};
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