tra1 = out.positionpiaw;
tra2 = out.positioncommand;
tra3 = out.positionnoint;
tra4 = out.positionnoaw;
tra5 = out.positionaw;
figure;
%for i=1:1:5
plot3(0,0,0);
title('Evolution of Position');
hold on;
grid on;
comet3(tra2.Data(:,1), tra2.Data(:,2), tra2.Data(:,3));
hold on
plot3(tra2.Data(:,1), tra2.Data(:,2), tra2.Data(:,3),'b');
hold on
%subplot(1,2,1);
comet3(tra1.Data(:,1), tra1.Data(:,2), tra1.Data(:,3));
hold on; 
plot3(tra1.Data(:,1), tra1.Data(:,2), tra1.Data(:,3),'r');
hold on; 
%subplot(1,2,1);
xlabel('X');
ylabel('Y');
zlabel('Z');
hold off;
%end