% MAE10S22AdvancedMath

% Class Statistics Example

% Minimum (min), maximum (max), arithmetic mean (mean), variance (var),
% standard deviation (sqrt(var), or std), mode (mode),  median (median),
% Histogram

classheights = load('mae10classheightss22.txt') ; 
% classheights = classheights(:,2) ; % all rows of the second column of data

minHeight  = min(classheights)   ; % minimum height
maxHeight  = max(classheights)   ; % maximum height
aveHeight  = mean(classheights)  ; % average height
modHeight  = mode(classheights)  ; % mode height
medHeight  = median(classheights); % median height
varHeight  = var(classheights)   ; % variance
stdHeight  = sqrt(varHeight)     ; % standard deviation using sqrt(var)
stdHeight2 = std(classheights)   ; % standard deviation using std function

fprintf('The minimum height is %.2f inches\n',minHeight)
fprintf('The maximum height is %.2f inches\n',maxHeight)
fprintf('The average height is %.2f inches\n',aveHeight)
fprintf('The mode (most common) height is %.2f inches\n',modHeight)
fprintf('The median (middle of data set) height is %.2f inches\n',medHeight)
fprintf('The variance of the data set is %.2f\n',varHeight) % variance measures 
             %how far a set of numbers is spread out from their average value
fprintf('The standard deviation of the variance is %.2f inches\n',stdHeight)
             
             
subplot(1,2,1)
plot(classheights,'*') % scatter plot of heights
title('Scatterplot of Student Heights')
xlabel('Students')
ylabel('Heights (inches)')
subplot(1,2,2)
histogram(classheights) ; % histogram of heights
title('Histogram of Class Heights in inches')
xlabel('Heights (inches)')
ylabel('Frequency')









%% Breakout Room 1
% 
% t = [1:7] ; % time vector
% V = [1.1 1.9 3.3 3.4 3.1 3.3 7.1] ; % voltage vector
% coefs = polyfit(t,V,1) ; % polyval finds the coefficients of the polynomial
%                          % of degree 1 (straight line) y = coefs(1)x +
%                          % coefs(2)
% curve = polyval(coefs,t) ; % create a curve as a function of the time vector
% 
% timeatV5 = (5 - coefs(2))/coefs(1) ; % Using the equation of the line we found, 
%                                      % find the time when V = 5 volts
% fprintf('When the voltage = 5 volts, the time is %.2f seconds\n',timeatV5)
%                                      
% plot(t,V,'r*',t,curve,'g',timeatV5,5,'b*')
% title('Line of Best Fit for Time vs. Voltage')
% xlabel('Time (seconds)')
% ylabel('Voltage (Volts)')

% %% Example 
% % polynomial derivation and integration using polyder and polyint
% % y = x^3 + 2*x^2 - 4*x + 3 ;
% y = [1 2 -4 3] ;
% der = polyder(y) ; 
% fprintf('The derivative of y = x^3 + 2*x^2 - 4*x + 3  is: %dx^2 + %dx + %d\n',der(1),der(2),der(3))
% integ = polyint(y) ; 
% fprintf('The integral of y = x^3 + 2*x^2 - 4*x + 3  is: %.2fx^4 + %.2fx^3 + %.2fx^2 + %.2fx  + C\n',integ(1),integ(2),integ(3),integ(4))
% 
% % polynomial diff and int using symbolic toolbox
% syms x y
% y = x^3 + 2*x^2 - 4*x + 3 ;
% diff(y) ; 
% int(y)  ; 
% fprintf('The derivative of y = x^3 + 2*x^2 - 4*x + 3  is: %s\n',diff(y))
% fprintf('The integral of y = x^3 + 2*x^2 - 4*x + 3  is: %s + C\n',int(y))


%% Breakout Room 2





