t = 0:10^(-6):20*10^(-3);
v = 10*cosd(377*t);
i = 5*cosd(377*t + 60);
grid on
plot(t,v,'r','linewidth',2);
hold on
plot(t,i,'c');
legend('Voltage','Current');
xlabel('Time');
ylabel('Voltage and Current');
