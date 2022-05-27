%% calorie mate 
% this user defined function will be used to calculate how much calories i
% should eat each week to maintain my weight based on my exercise
% the plot will display the calories for a whole month
% code will ask for my height, weight and age on that day to calculate RMR 
% RMR is then multiplied with a factor of level of exercise 

function calmate
calmonth=[]; %makes empty vector for plotting
weight=input('Enter weight in kg: '); %prompt for my weight
height=input('Enter height in cm: '); %prompt for my height
age=input('Enter age: '); %prompt for my age
fprintf(['These are the 5 levels of exercise: \n' ...
    '1. little to no exercise \n2. lightly active: 1-3 days of exercise a week' ...
    ' \n3. moderately active: 3-5 days of exercise a week \n4. very active: ' ...
    '5-7 days of exercise a week \n5. extra active: 5-7 days intense exercise or ' ...
    'physically demanding job \n']); %printing the level of exercises 
for i=1:4 %starts a for loop that loops for each week in a month (4 weeks in 1 month)
    fprintf('Week %d: ', i); 
    lvl=input('On a scale of 1-5, how active were you? '); %ask for level of exercise
    RMR=(9.99*weight)+(6.25*height)-(4.92*age)-161; %count for RMR
    if lvl==1 %if statements to calculate calorie intake based on level of exercise 
        calin=1.2*RMR; %multipliers will determine calories needed
    elseif lvl==2
        calin=1.375*RMR;
    elseif lvl==3
        calin=1.55*RMR;
    elseif lvl==4
        calin=1.725*RMR;
    elseif lvl==5
        calin=1.9*RMR; %the more exercise, the higher the multiplier
    end %end ifs
    fprintf('%4.2f calories/day is needed to maintain your current weight. \n', calin);
    %display the recommended calorie intake
    calmonth=[calmonth calin]; %adds a new value of calin to vector calmonth each iteration
end %end for

x=[1:4]; %set x range
y=[calmonth]; %set y range
bar(y,'g'); %plots a bar graph
xlabel('Week'); %label for x
ylabel('Calories/J'); %label for y
title('Calories needed to maintain weight in a month'); %graph title
end %end function

%Infographics
%function name is calmate
%this will be useful for me to track the amount of calories i should eat to
%maintain my current weight, i can add extended features to recommend me
%how much i should eat if i want to either gain or lose weight
% for the example use case do i run the code in my command window?
%related functions would be functions that calculate how many calories you
%burn a day, a function that calculates nutrients, a function that
%recommends amount of exercise



