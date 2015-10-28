function Project_GUI_func(handles)
%% set parameters
counter = 1;
v(1) = 0;              % initial velocity
x(1) = 0;              % initial position
DragForce(1) = 0;      % initial drag force
deltat = .01;% change in time
t(1) = 0;
[rower_lineups,totalavgpower_lineups,totalmass_lineups]=FindRowerStats(handles);
tracker = 1000000;
StrokeTime = 0;
%% waitbar
N = 1000;
hwb = waitbar(0,'Row, row, row your boat...','Name','Time marching');
%% calculations
for i=1:70 % all lineup combination
current_m = totalmass_lineups(i,1);             % kg, mass of lineup
current_m_boat = current_m + 210/2.2;           % kg, (boat+coxswain = 210lbs) 
current_totalavgp = totalavgpower_lineups(i,1); % avg power of lineup
    for strokerate=32:38              % tests all strokerates
        TimeOfStroke=60/strokerate;      % total time of stroke
        counter=1;                       % counts to build v and x
        while x(counter)<2000 && t(counter)<500 % stops at end of course
            zerosMatrix(counter)=0;
            % weight= weight off all rowers
            RecovForce=RecoveryForce(current_m,strokerate);
            % Force is average and will change with time
            Force=powerconverter(current_totalavgp,strokerate);
            Force=(Force*35)/strokerate;
            if StrokeTime< 1/3 * TimeOfStroke  % time where oar is in water
                if x(counter)<200
                    Force=Force*1.33;
                elseif x(counter)<1500
                    Force=Force*.85;
                else
                    Force=Force*1.2;
                end
                RowerForce=Force;
            elseif StrokeTime < 14/15 * TimeOfStroke
                RowerForce=0;
            else
                
                RowerForce=-RecovForce; % time where oar is out of water
            end
            TotalForce=RowerForce-DragForce;%-RecovForce(counter);
            %% Verlet method
            vhalf=v(counter)+(TotalForce/current_m_boat)*deltat/2;
            x(counter+1)=x(counter)+vhalf*deltat;
            v(counter+1)=vhalf+(TotalForce/current_m_boat)*deltat/2;
            t(counter+1)=t(counter)+deltat; % keeps track of time
            StrokeTime=StrokeTime+deltat; % keeps track of time in stroke
            counter=counter+1;
            DragForce=calcDragForce(v(counter)); % recalculates drag from new v
            if StrokeTime>TimeOfStroke % resets stroke time back to 0
                StrokeTime=0;
            end
        end
        %% saves info of fastest time to graph later
        if t(counter)<=tracker
            tracker=t(counter);
            plottingX=x;
            plottingV=v;
            plottingT=t;
            IdealStrokeRate=strokerate;
            IdealRower(1) = rower_lineups(i,1);
            IdealRower(2) = rower_lineups(i,2);
            IdealRower(3) = rower_lineups(i,3);
            IdealRower(4) = rower_lineups(i,4);
        end
        %% reset Everything
        x=0;
        v=0;
        t=0;
        
    end
    waitbar(i/70,hwb);
end
close(hwb)
%% display results
% ZeroMatrix=zeros(length(plottingX));
for i = 1:4
    switch IdealRower(i) 
        case 1
           if i==1;
              handles.rower1Static.String=handles.r1nameText.String;
           elseif i==2;
              handles.rower2Static.String=handles.r1nameText.String;
           elseif i==3;
              handles.rower3Static.String=handles.r1nameText.String;
           elseif i==4;
              handles.rower4Static.String=handles.r1nameText.String;
           end
        case 2
           if i==1;
              handles.rower1Static.String=handles.r2nameText.String;
           elseif i==2;
              handles.rower2Static.String=handles.r2nameText.String;
           elseif i==3;
              handles.rower3Static.String=handles.r2nameText.String;
           elseif i==4;
              handles.rower4Static.String=handles.r2nameText.String;
           end
        case 3 
           if i==1;
              handles.rower1Static.String=handles.r3nameText.String;
           elseif i==2;
              handles.rower2Static.String=handles.r3nameText.String;
           elseif i==3;
              handles.rower3Static.String=handles.r3nameText.String;
           elseif i==4;
              handles.rower4Static.String=handles.r3nameText.String;
           end
        case 4
           if i==1;
              handles.rower1Static.String=handles.r4nameText.String;
           elseif i==2;
              handles.rower2Static.String=handles.r4nameText.String;
           elseif i==3;
              handles.rower3Static.String=handles.r4nameText.String;
           elseif i==4;
              handles.rower4Static.String=handles.r4nameText.String;
           end
        case 5
            if i==1;
              handles.rower1Static.String=handles.r5nameText.String;
           elseif i==2;
              handles.rower2Static.String=handles.r5nameText.String;
           elseif i==3;
              handles.rower3Static.String=handles.r5nameText.String;
           elseif i==4;
              handles.rower4Static.String=handles.r5nameText.String;
           end
        case 6
            if i==1;
              handles.rower1Static.String=handles.r6nameText.String;
           elseif i==2;
              handles.rower2Static.String=handles.r6nameText.String;
           elseif i==3;
              handles.rower3Static.String=handles.r6nameText.String;
           elseif i==4;
              handles.rower4Static.String=handles.r6nameText.String;
           end
        case 7
            if i==1;
              handles.rower1Static.String=handles.r7nameText.String;
           elseif i==2;
              handles.rower2Static.String=handles.r7nameText.String;
           elseif i==3;
              handles.rower3Static.String=handles.r7nameText.String;
           elseif i==4;
              handles.rower4Static.String=handles.r7nameText.String;
           end
        case 8
            if i==1;
              handles.rower1Static.String=handles.r8nameText.String;
           elseif i==2;
              handles.rower2Static.String=handles.r8nameText.String;
           elseif i==3;
              handles.rower3Static.String=handles.r8nameText.String;
           elseif i==4;
              handles.rower4Static.String=handles.r8nameText.String;
           end
    end
end
handles.strokerateStatic.String = num2str(IdealStrokeRate);
for y=1:50:length(plottingT)
    plot(handles.simulationAxes,plottingX(1:y),zerosMatrix(1:y),plottingX(y),zerosMatrix(y),'o')
    axis(handles.simulationAxes,[0 2000 -1 1])
    xlabel(handles.simulationAxes,'position of boat')
    plot(handles.velocityAxes,plottingT(1:y),plottingV(1:y),plottingT(y),plottingV(y),'c')
    axis(handles.velocityAxes,[0 tracker 0 10])
    xlabel(handles.velocityAxes,'time(s)')
    ylabel(handles.velocityAxes,'velocity(m/s)')
    drawnow
end
handles.totaltimeStatic.String=[num2str(plottingT(length(plottingT))) ' s']; % displays total time
handles.maxvelocityStatic.String=[num2str(max(plottingV)) ' m/s']; % disp max velocity
handles.avgvelocityStatic.String=[num2str(mean(plottingV)) ' m/s']; % disp max velocity
