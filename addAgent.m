function agent = addAgent(name, position, velocity, goal,vmax)
% addAgent - Return a struct with agent details
%
% Syntax: agent = addAgent(name, position, velocity, goal)
%
    agent = struct( 'name', name, 'position', position, 'velocity', velocity );
    agent.goal = goal;
    agent.path = [];
    agent.radius = 0.5;
    agent.sensorRange = 5;
    agent.vmax = 1;
    agent.phi=atan2((agent.goal(2)-agent.position(2)),(agent.goal(1)-agent.position(1)));
    agent.color=[0 170 255] / 255;
    agent.prevfov={ };
    agent.sen_angle=45;
    agent.time=0;
    agent.count=0;
    agent.obstacle_indx=[];
    agent.coeff=[];
    agent.initialpos = position;
    agent.gflag = 0;
    agent.goaldist = 100;
    agent.VelData = [];
    
    agent.t1 = 0;
    agent.t2 = 0;
    agent.t3 = [];
    agent.timedata = [];
end