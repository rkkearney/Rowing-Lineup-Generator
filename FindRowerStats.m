function [rower_lineups,totalavgpower_lineups,totalmass_lineups]=FindRowerStats(handles)

% This function creates the line ups of inputted rowers and output 
% total avg power of each lineup and total mass of each lineup

% get each rower's power from GUI
rower1power=str2double(handles.r1powerText.String);
rower2power=str2double(handles.r2powerText.String);
rower3power=str2double(handles.r3powerText.String);
rower4power=str2double(handles.r4powerText.String);
rower5power=str2double(handles.r5powerText.String);
rower6power=str2double(handles.r6powerText.String);
rower7power=str2double(handles.r7powerText.String);
rower8power=str2double(handles.r8powerText.String);
% get each rower's lbs from GUI & convert to mass
rower1mass=str2double(handles.r1weightText.String)/2.2;
rower2mass=str2double(handles.r2weightText.String)/2.2;
rower3mass=str2double(handles.r3weightText.String)/2.2;
rower4mass=str2double(handles.r4weightText.String)/2.2;
rower5mass=str2double(handles.r5weightText.String)/2.2;
rower6mass=str2double(handles.r6weightText.String)/2.2;
rower7mass=str2double(handles.r7weightText.String)/2.2;
rower8mass=str2double(handles.r8weightText.String)/2.2;
    rower_lineups=lineups(0);
totalavgpower_lineups=zeros(70,1);
totalmass_lineups=zeros(70,1);
for i=1:70
    for j=1:4
        curr_rower = rower_lineups(i,j);
        switch curr_rower
            case 1
                curr_power = rower1power;
                curr_mass = rower1mass;
            case 2
                curr_power = rower2power;
                curr_mass = rower2mass;
            case 3
                curr_power = rower3power;
                curr_mass = rower3mass;
            case 4
                curr_power = rower4power;
                curr_mass = rower4mass;
            case 5
                curr_power = rower5power;
                curr_mass = rower5mass;
            case 6
                curr_power = rower6power;
                curr_mass = rower6mass;
            case 7
                curr_power = rower7power;
                curr_mass = rower7mass;
            case 8
                curr_power = rower8power;
                curr_mass = rower8mass;
        end
        totalavgpower_lineups(i) = curr_power+totalavgpower_lineups(i);
        totalmass_lineups(i) = curr_mass+totalmass_lineups(i);
    end
end
end