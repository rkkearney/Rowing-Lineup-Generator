function Project_GUI_func(handles)

clear all
%% set parameters
counter = 1;
v(1) = 0;              % initial velocity
x(1) = 0;              % initial position
DragForce(1) = 0;      % initial drag force
deltat = 0.01;           % change in time
t(1) = 0;
[rower_lineups,totalavgpower_lineups,totalmass_lineups]=FindRowerStats(handles);
tracker = 1000000;
StrokeTime = 0;
count = 1;
%% calculations
for i=1:1000
    current_mass = totalmass_lineups(i,1);
    current_mass = current_mass+210/2.2;   % add in mass of boat and coxswain
    for strokerate=30:45 % tests all strokerates
        TimeOfStroke=60/strokerate; % total time of stroke
        counter=1; % counts to build v and x
        while x(counter)<2000 % stops at end of course
            % weight= weight off all rowers
            RecovForce=RecoveryForce(weight,strokerate,deltat);
            % Force is average and will change with time
            Force=100;
            Force=(Force*38)/strokerate;
            if StrokeTime< 1/3 * TimeOfStroke  % time where oar is in water
                if x(counter)<200
                    Force=Force*1.53;
                elseif x(counter)<1500
                    Force=Force*.83;
                else
                    Force=Force*1.2;
                end
                RowerForce=(-(StrokeTime-TimeOfStroke/6)^2)*10*Force+Force/2.25;
            elseif StrokeTime < TimeOfStroke
                RowerForce=0;
            else
                % RowerForce=0;
                RowerForce=-RecovForce; % time where oar is out of water
            end
            TotalForce=RowerForce-DragForce;%-RecovForce(counter);
            %% Verlet method
            vhalf=v(counter)+(TotalForce/m)*deltat/2;
            x(counter+1)=x(counter)+vhalf*deltat;
            v(counter+1)=vhalf+(TotalForce/m)*deltat/2;
            t(counter+1)=t(counter)+deltat; % keeps track of time
            StrokeTime=StrokeTime+deltat; % keeps track of time in stroke
            counter=counter+1;
            DragForce=calcDragForce(v(counter)); % recalculates drag from new v
            if StrokeTime>TimeOfStroke % resets stroke time back to 0
                StrokeTime=0;
            end
        end
        %% saves info of fastest time to graph later
        totaltime(count)=t(counter);
        count=count+1;
        if t(counter)<=tracker
            tracker=t(counter);
            plottingX=x;
            plottingV=v;
            plottingT=t;
            IdealStrokeRate=strokerate;
            
        end
        %% reset Everything
        x=0;
        v=0;
        t=0;
    end
end
%% display results
figure(1)
plot(plottingT,plottingX)
figure(2)
plot(plottingT,plottingV)
figure(3)
plot(linspace(30,45,16),totaltime);