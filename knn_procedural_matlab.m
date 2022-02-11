clc;
close all;
% r = rugbey players, c = cricket players, n = new player
% w = weight, h = height
rw = [80, 75, 79, 82, 86, 81, 84, 78];
rh = [6.06, 6.0, 6.01, 6.1, 5.84, 6.12, 6.2, 6.025];

cw = [53, 54, 57, 59, 61, 65, 68, 76];
ch = [5.71, 5.73, 5.87, 5.78, 5.82, 5.85, 5.79, 5.62];

k = 5; % should be taken an odd number
pw = input('Enter the weight of new player = ');
ph = input('Enter the height of new player = ');

distance = zeros(1,16);
grp = zeros(1,16);

for i = 1:8 % length(rw) = 8
  distance(i) = sqrt((pw-rw(i)).^2 + (ph-rh(i)).^2);
  grp(i) = 0;
end

for i = 1:8 
  % 8 + length(rw) = 9 i.e. distance(8+i) = ...
  distance(8+i) = sqrt((pw-cw(i)).^2 + (ph-ch(i)).^2);
  grp(8+i) = 1;
end

% sorting distance matrix using bubble sort
for i = 1:16
  for j = 1:15
    if distance(j) > distance(j+1)
      distance([j j+1]) = distance([j+1 j]); % swap
      grp([j j+1]) = grp([j+1 j]);
    end
  end
end

rflag = 0;
cflag = 0;

for i = 1:k
  if grp(i) == 0
    rflag = rflag + 1;
  else
    cflag = cflag + 1;
  end
end

if rflag > cflag
  shape = 'd';
else
  shape = 'c';
end

figure
hold on;
%scatter(x, y, size, color, filled, marker_shape) function plots point on graph
scatter(rw, rh, 100, 'b', 'filled', 'd'); % rugbey players
scatter(cw, ch, 100, 'g', 'filled','c'); % cricket players
scatter(pw, ph, 100, 'r', 'filled',shape); % new player

grid on;
title('Data Visualization using KNN algorithm');

legend('Rugbey Players(diamond)','Cricket Players(circle)');