tt = -0.2 : 0.002 : 0.6;
xx = 4.* cos( 2*pi*5*tt + 1.);
plot( tt, xx, 'b-', tt, xx, 'r--' ), grid on %<--- plot a
%sinusoid
axis([tt(1) tt(end) -4 4]); %what does this do?
title('TEST PLOT of a SINUSOID')
xlabel('TIME (sec)')


% X 0, Y 2.16121
% X -0.032 Y 3.99994 (add in all x values)
