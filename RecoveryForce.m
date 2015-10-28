function [Force]=RecoveryForce(weightrowers,strokerate)
velocityCollision=(.843/((2/3)*60/strokerate)); % m/s
Force=(weightrowers*velocityCollision)/((2/3)*60/strokerate);
end

