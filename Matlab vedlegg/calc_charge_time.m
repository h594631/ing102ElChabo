
figure;

btn50 = uicontrol();
btn50.UserData = 50;
bt50.style = 'Pushbutton';
btn50.String = '50kW';
btn50.Position = [100,20,60,40];
btn50.Callback = @Calc_charge_time;

btn150 = uicontrol();
btn150.UserData = 150;
bt150.style = 'Pushbutton';
btn150.String = '150kW';
btn150.Position = [200,20,60,40];
btn150.Callback = @Calc_charge_time;

btn250 = uicontrol();
btn250.UserData = 250;
bt250.style = 'Pushbutton';
btn250.String = '250kW';
btn250.Position = [300,20,60,40];
btn250.Callback = @Calc_charge_time;

btnzin = uicontrol();
btzin.style = 'Pushbutton';
btnzin.String = 'Zoom inn';
btnzin.UserData = 1.25;
btnzin.Position = [400,20,60,20];
btnzin.Callback = @cam_zoom;

btnzout = uicontrol();
btzout.style = 'Pushbutton';
btnzout.String = 'Zoom ut';
btnzout.UserData = 0.75;
btnzout.Position = [400,40,60,20];
btnzout.Callback = @cam_zoom;


function Calc_charge_time(source,eventdata)

    batteryCap = [70;140;210];
    chargeCap = source.UserData;

    chargeTime = batteryCap/chargeCap;

    b = bar(batteryCap,chargeTime);
    daspect([40,1,1]);
    
    b.FaceColor = 'Flat';
    b.CData(1,:) = [.9 .1 .14];
    b.CData(2,:) = [.9 .9 .14];
    b.CData(3,:) = [.25 .55 .79];
    
    ylim([0,4.5]);
    xlabel('Batterikapasitet i kW/h');
    ylabel('Ladetid i timer');
    title("Ladetider for ladekapasitet på " + source.String);
    
    xtips = b(1).XEndPoints;
    ytips = b(1).YEndPoints;
    labels = string(round(b(1).YData,2));
    text(xtips,ytips,labels,'HorizontalAlignment','center',...
     'VerticalAlignment','bottom');
end

function cam_zoom(source,eventdata)
    zoomfactor = source.UserData;
    
    camzoom(zoomfactor);
end