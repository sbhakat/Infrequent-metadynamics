fileID = fopen('transition_time.xvg','r');
formatSpec = '%f';
times_vector = fscanf(fileID,formatSpec);
H = STPtest(times_vector,10^-4,10^5,1000)
ax1= subplot(1,2,1);
xlim(ax1,[10^-3 10^3]);
xticks( 10.^(-3:1:3));
