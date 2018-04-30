    count = zeros(7+1,11+1);
    deviation = zeros(length(PATH),1);
    for i = 1:length(PATH)
        curr_node = PATH(i);
        path = curr_node.pos;
        parent_node = curr_node.parent;
        while any(abs(parent_node.pos - start_pos)>tol)
            path = [path; parent_node.pos];
            parent_node = parent_node.parent;
        end
        path = [path; parent_node.pos];
        [deviation(i),index] = max(abs(path(:,1)/7 - path(:,2)/11));
        count(path(index,1)+1,path(index,2)+1) = count(path(index,1)+1,path(index,2)+1) + 1;
    end
    
actions = nchoosek(repmat([0 1 2 3 4 5 6 7],1,12),12);
actions = actions(sum(actions,2)==8);

path = [];
for i = 1:12
    for j = 0:7
        path = [];
    end
end











