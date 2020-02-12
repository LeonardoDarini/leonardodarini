
t = time;
vy = Vx;
vx = Vy;
vz = Vz;

figure(1);
plot3(vx, vy, vz, '.-');
grid on;
grid('minor');
xlabel('V_x [V]');
ylabel('V_y [V]');
zlabel('V_z [V]');
title('Attrattore di lorentz simulaz. R = 100k\Omega');

figure(2);
hold on;
plot(t, vx, '.-', 'DisplayName', 'V_x');
plot(t, -1.*vy, '.-', 'DisplayName', '-V_y');
plot(t, vz, '.-', 'DisplayName', 'V_z');
grid on;
grid('minor');
xlabel('Tempo [s]');
ylabel('Tensione [V]');
title('Segnali simulati in uscita dal circuito R = 100k\Omega');
lgn = legend;
set(lgn, 'location', 'best');

print(1, '/Users/matteovilucchio/Dropbox/DARVIL/data/week12/grafici/sim3dltspice.png', ...
    '-dpng', '-r300');
print(2, '/Users/matteovilucchio/Dropbox/DARVIL/data/week12/grafici/sim2dltspice.png', ...
    '-dpng', '-r300');