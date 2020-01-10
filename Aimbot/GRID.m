
sx = 0;
sy = 0;
tx = 100;
ty = 100;


%dt = (0:0.5:10);

bx = sx;
by = sy;
angle = 45;
bvi = 50
bvx = bvi*cosd(angle);
bvy = bvi*sind(angle);

fps = 30;
xlim([0,200])
ylim([0,200])
h = plot(bx, by, '.r')
grid on;
hold all;
plot(tx,ty, '.b')


for i_=1:1000
    dt = 1.0 / fps;
    
    drag = -0.1;
    grav = -10;

    bax = drag;
    bay = grav;

% VEGETTA / CELL INTEGRATOR IMPLEMENTATION    
    bx = sx + bx + (bvx * dt);
    bvx = bvx + (bax * dt);
    if bx>200
        bvx = -bvx;
        bx = 200;
    end
    if bx<0
        bvx = -bvx;
        bx = 0;
    end

% VEGETTA / CELL INTEGRATOR IMPLEMENTATION
    by = sy + by + (bvy * dt);
    bvy = bvy + (bay * dt);
    
    if by<0
        bvy = -bvy*0.9;
        by = 0;
    end
    
%     set(h, 'Ydata', by, '.r')
%     set(h, 'Xdata', bx, '.r')
    plot(bx, by, '.r')
    if bx == tx
    end
    hold all;
    pause(0.01)
end
