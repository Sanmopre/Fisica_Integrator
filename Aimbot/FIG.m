function varargout = FIG(varargin)
% FIG MATLAB code for FIG.fig
%      FIG, by itself, creates a new FIG or raises the existing
%      singleton*.
%
%      H = FIG returns the handle to a new FIG or the handle to
%      the existing singleton*.
%
%      FIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIG.M with the given input arguments.
%
%      FIG('Property','Value',...) creates a new FIG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FIG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FIG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FIG

% Last Modified by GUIDE v2.5 10-Jan-2020 13:03:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FIG_OpeningFcn, ...
                   'gui_OutputFcn',  @FIG_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before FIG is made visible.
function FIG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FIG (see VARARGIN)
xlabel('Position x(m)');
ylabel('Position y(m)');
handles.k=1;
handles.deletesquares=0;
% Choose default command line output for FIG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FIG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FIG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function SX_Callback(hObject, eventdata, handles)
% hObject    handle to SX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SX as text
%        str2double(get(hObject,'String')) returns contents of SX as a double


% --- Executes during object creation, after setting all properties.
function SX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TX_Callback(hObject, eventdata, handles)
% hObject    handle to TX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TX as text
%        str2double(get(hObject,'String')) returns contents of TX as a double


% --- Executes during object creation, after setting all properties.
function TX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SY_Callback(hObject, eventdata, handles)
% hObject    handle to SY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SY as text
%        str2double(get(hObject,'String')) returns contents of SY as a double


% --- Executes during object creation, after setting all properties.
function SY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TY_Callback(hObject, eventdata, handles)
% hObject    handle to TY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TY as text
%        str2double(get(hObject,'String')) returns contents of TY as a double


% --- Executes during object creation, after setting all properties.
function TY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonaimbot.
function buttonaimbot_Callback(hObject, eventdata, handles)
% hObject    handle to buttonaimbot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%deleting trajectory, shooter and target from the preavious aimbot
if(handles.deletesquares)
    for j=1:handles.k-1
        delete(handles.trajectory(j));
    end
    delete(handles.bullet);
    delete(handles.target);
    delete(handles.shooter);
end
%flag to know if this is the first aimbot after appluication start
handles.deletesquares=1;
%getting input framerate and calculating dt
framerate=str2double(get(handles.frameratetext,'String'));
dt=1/framerate;
%getting shooter,target and bullet inputs and drawing them
sx=str2double(get(handles.SX,'String'));
sy=str2double(get(handles.SY,'String'));
tx=str2double(get(handles.TX,'String'));
ty=str2double(get(handles.TY,'String'));
handles.shooter=rectangle('Position',[sx sy 0.5 0.5]);
handles.target=rectangle('Position',[tx ty 0.5 0.5]);
handles.bullet=rectangle('Position',[sx sy 0.1 0.1]);
shooterrect=get(handles.shooter,'Position');
targetrect=get(handles.target,'Position');
bulletrect=get(handles.bullet,'Position');
%setting defaut acceleration ('wind' force makes ax -5 by default and ay=to gravity)
a=[-5,-9.81];
%exit loops flag
exit=0;
%checking user inputs are within the bounderies of the graph
if(0<=shooterrect(1) && shooterrect(1)<=20 && 0<=shooterrect(2) && shooterrect(2)<=10 && 0<=targetrect(1) && targetrect(1)<=20 && 0<=targetrect(2) && targetrect(2)<=10 && framerate>0)
    %performing 5000 tries of MonteCarlo algorithm(tries to hit target with random initial bullet velocity and shot angle)
    for iterations=0:5000
    v0=rand*100;
    angle=rand*100;
    bulletv = v0*[cosd(angle) sind(angle)];
        for i=0:1000
        %Euler integrator helps calculate the position of the bullet every frame
        bulletv=bulletv+a*dt;
        bulletrect(1)=bulletrect(1)+bulletv(1)*dt;
        bulletrect(2)=bulletrect(2)+bulletv(2)*dt;
        %checking if bullet collides with target
        if(targetrect(1) < bulletrect(1) + bulletrect(3) && targetrect(1) + targetrect(3) > bulletrect(1) && targetrect(2) < bulletrect(2) + bulletrect(4) && targetrect(2) + targetrect(4) > bulletrect(2))
            %if the collision is produced we exit loops and save the initial velocity and angle of the succesful shot
            v0f=v0;
            anglef=angle;
            fiterations=iterations;
            frames=i;
            exit=1;
            break;
        end
        end
        bulletrect=get(handles.bullet,'Position');
        if(exit==1)
            break;
        end
    end
    %We update the ui of the user with the info of the correct shoot
    set(handles.Iterations,'String',num2str(fiterations));
    set(handles.AngleText,'String',num2str(anglef));
    set(handles.V0Text,'String',num2str(v0f));
    %we calculate the trajectory of the succesful shot
    bx=sx;
    by=sy;
    bvx=v0f*cosd(anglef);
    bvy=v0f*sind(anglef);
    %we draw the correct shot trajectory using a loop that draws the position of the bullet in each frame
    for k=0:frames
        %Euler integrator
        bvx=bvx+a(1)*dt;
        %if(bx>20)
            %bvx=-bvx;
        %elseif(bx<0)
            %bvx=-bvx;
        %end
        bvy=bvy+a(2)*dt;
        %if(by>10)
            %bvy=-bvy;
        %elseif(by<0)
            %bvy=-bvy;
        %end
        bx=bx+bvx*dt;
        by=by+bvy*dt;
        handles.trajectory(handles.k)=rectangle('Position',[bx by 0.1 0.1]);
        handles.k=handles.k+1;
    end
%If the user input is not within the graph buonderies we keep waiting for input
else
    disp('Wrong inputs, chek info');
end
guidata(hObject,handles);



function frameratetext_Callback(hObject, eventdata, handles)
% hObject    handle to frameratetext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frameratetext as text
%        str2double(get(hObject,'String')) returns contents of frameratetext as a double


% --- Executes during object creation, after setting all properties.
function frameratetext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frameratetext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
