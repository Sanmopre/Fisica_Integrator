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

%delete(shooter);
%delete(target);
sx=str2double(get(handles.SX,'String'));
sy=str2double(get(handles.SY,'String'));
shooterpos=[sx sy]';
tx=str2double(get(handles.TX,'String'));
ty=str2double(get(handles.TY,'String'));
targetpos=[tx ty]';
shooter=rectangle('Position',[sx sy 0.5 0.5]);
target=rectangle('Position',[tx ty 0.5 0.5]);
plot(shooter);
plot(target);
framerate=str2double(get(handles.frameratetext,'String'));
dt=1/framerate;
a=[-5,9.81]';
if(0<=shooterpos(1,1) && shooterpos(1,1)<=10 && 0<=shooterpos(2,1) && shooterpos(2,1)<=20 && 0<=targetpos(1,1) && targetpos(1,1)<=10 && 0<=targetpos(2,1) && targetpos(2,1)<=20 && framerate>0)
    disp('hellow world')
    bulletpos=shooterpos;
    for iterations=0:1000
    v0=rand*100;
    angle=rand*100;
    bulletv = v0*[cosd(angle);sind(angle)];
        for i=0:1000
        %Euler integrator
        bulletv=bulletv+a*dt;
        bulletpos=bulletpos+bulletv*dt;
        if(bulletpos==shooter)
            v0f=v0;
            anglef=angle;
            fiterations=iterations;
            break;
        end
        end
    end
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
