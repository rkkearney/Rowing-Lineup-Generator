function [totalDrag] = calcDragForce(boatVelocity)

coefBow = .54;   %found from onine tables of coefficients
coefMiddle = .81;
coefStern = .54;

areaBow = .2 * 5.5; %the percentage of the boat we consider to be the bow portion * the total wetted surface
areaMiddle = .6 * 5.5;  %same process
areaStern = .2 * 5.5;   %same process

dragBow = boatVelocity * coefBow * areaBow;
dragMiddle = boatVelocity * coefMiddle * areaMiddle;
dragStern = boatVelocity * coefStern * areaStern;

totalDrag = dragBow + dragMiddle + dragStern;

end