% System Parameters
m = 2.22;                        % Mass in kg
k = 20000;                       % Spring stiffness in N/m
c = 66.6;                        % Damping coefficient in Ns/m

% External force: sinusoidal
f = @(t) 100 * sin(2*pi*20*t);   % Force in N as function of time

% Simulation time
simTime = 2.5;                     % Total time (seconds)

% Initial Conditions
x0 = 0;                          % Initial position
v0 = 0;                          % Initial velocity

%% Clear any previous figure
figure;

% Extract from workspace (ensure these exist after simulation)
t = time;                  % Time array
x = position(:,1);         % Position output
v = velocity(:,1);         % Velocity output

% Plot
plot(t, x, 'r-', 'LineWidth', 2); hold on;
plot(t, v, 'b-', 'LineWidth', 2);

xlabel('Time (s)');
ylabel('Response');
title('Response of Spring-Mass-Damper System');
legend({'Position', 'Velocity'}, 'Location', 'best');
grid on;


