function deviation = path_deviations_3(n, m)

    % Define starting and goal node
    start_pos = [0 0];
    goal_pos = [n m];

    % Set the initial node
    init_node.pos = start_pos;
    init_node.parent = struct;

    % Start an OPEN list
    OPEN = init_node;

    % Define all possible actions
    actions = [1, 0; 0, 1];

    % Start a PATH list
    PATH = [];

    % Search algorithm
    tol = 1e-4;
    while ~isempty(OPEN)
        current_node = OPEN(1);
        OPEN(1) = [];

        if all(abs(current_node.pos - goal_pos)<tol)
            PATH = [PATH; current_node];
            continue;
        end

        % expand
        for i=1:length(actions)
            neighbor_node.pos = current_node.pos + actions(i,:);
            % check if it lies inside the boundary
            if (neighbor_node.pos(1) > n)||(neighbor_node.pos(2) > m)
                continue;
            end
            neighbor_node.parent = current_node;
            OPEN = [OPEN; neighbor_node];
        end
    end

    % Create a deviation vector
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
        deviation(i) = max(abs(path(:,1)/m - path(:,2)/n));
    end

end