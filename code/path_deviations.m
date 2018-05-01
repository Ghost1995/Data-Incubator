function path_deviations(n, m)

    % Create a deviation matrix
    deviations = zeros(n+1,m+1);
    for i = 0:n
        deviations(i+1,:) = abs(i/n - (0:m)/m);
    end

    % Compute all deviations
    index = ones(1,n+1);
    actions = 0:m;
    index(end) = length(actions);
    indDeviation = zeros(1,length(index));
    D = unique(deviations);
    for i = 1:length(D)-1
        if abs(D(i) - D(i+1))<1e-4
            D(i) = 0;
        end
    end
    D(D==0) = [];
    D = [D, zeros(length(D),1)];
    numPaths = nchoosek(n+m,m);
    count = 1;
    while count <= numPaths
        path = actions(index);
        col = 1;
        for j = 1:length(path)
            col = col + path(j);
            indDeviation(j) = deviations(j,col);
        end
        match = abs(D(:,1) - max(indDeviation)) < 1e-4;
        D(match,2) = D(match,2) + 1;
        count = count+1;
        for j = length(index):-1:1
            index(j) = index(j) + 1;
            if index(j) > length(actions)
                index(j) = 1;
            else
                break;
            end
        end
        while sum(index) - length(index) ~= m
            for j = length(index):-1:1
                index(j) = index(j) + 1;
                if index(j) > length(actions)
                    index(j) = 1;
                else
                    break;
                end
            end
        end
    end
    meanD = sum(D(:,1).*D(:,2))/sum(D(:,2));
    stdD = sqrt(sum(((D(:,1) - meanD).^2).*D(:,2))/(sum(D(:,2)) - 1));
    countD2 = sum(D(D(:,1)>0.2,2));
    countD6 = sum(D(D(:,1)>0.6,2));
    
    % Compute the required values
    disp(['The mean of D when m = ' num2str(m) ' and n = ' num2str(n) ' is ' num2str(meanD,'%.10f') '.'])
    disp(['The standard deviation D when m = ' num2str(m) ' and n = ' num2str(n) ' is ' num2str(stdD,'%.10f') '.'])
    disp(['The conditional probability that D is greater than 0.6 given that it is greater than 0.2 when m = ' num2str(m) ' and n = ' num2str(n) ' is ' num2str(countD6/countD2,'%.10f') '.'])

end