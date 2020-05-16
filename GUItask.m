function varargout = GUItask(varargin)
% GUITASK MATLAB code for GUItask.fig
%      GUITASK, by itself, creates a new GUITASK or raises the existing
%      singleton*.
%
%      H = GUITASK returns the handle to a new GUITASK or the handle to
%      the existing singleton*.
%
%      GUITASK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITASK.M with the given input arguments.
%
%      GUITASK('Property','Value',...) creates a new GUITASK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUItask_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUItask_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUItask

% Last Modified by GUIDE v2.5 14-May-2009 17:05:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUItask_OpeningFcn, ...
                   'gui_OutputFcn',  @GUItask_OutputFcn, ...
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


% --- Executes just before GUItask is made visible.
function GUItask_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUItask (see VARARGIN)

% Choose default command line output for GUItask
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUItask wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUItask_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
contents=cellstr(get(hObject,'String'));
popupmenu1=contents(get(hObject,'value'));
if(strcmp(popupmenu1,'Germany'))
    popval=1;
elseif(strcmp(popupmenu1,'China'))
    popval=2;
elseif(strcmp(popupmenu1,'India'))
    popval=3;
elseif(strcmp(popupmenu1,'Italy'))
    popval=4;
elseif(strcmp(popupmenu1,'USA'))
    popval=5;
end




% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
value=get(handles.popupmenu1,'value');
switch value
    case 1
        data=xlsread('data.xlsx');
        num1=sum(data(1:121,4));
        set(handles.edit1,'String',num1);
    case 2
        data=xlsread('data.xlsx');
        num1=sum(data(123:243,4));
        set(handles.edit1,'String',num1);
    case 3
       data=xlsread('data.xlsx'); 
       num1=sum(data(245:364,4));
       set(handles.edit1,'String',num1);
    case 4
        data=xlsread('data.xlsx'); 
        num1=sum(data(366:486,4));
        set(handles.edit1,'String',num1);
     case 5
        data=xlsread('data.xlsx');
        num1=sum(data(488:608,4));
        set(handles.edit1,'String',num1);
end
 

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
value=get(handles.popupmenu1,'value');
switch value
    case 1
        data=xlsread('data.xlsx');
        num1=sum(data(1:121,5));
        set(handles.edit2,'String',num1);
    case 2
        data=xlsread('data.xlsx');
        num1=sum(data(123:243,5));
        set(handles.edit2,'String',num1);
    case 3
       data=xlsread('data.xlsx'); 
       num1=sum(data(245:364,5));
       set(handles.edit2,'String',num1);
    case 4
        data=xlsread('data.xlsx'); 
        num1=sum(data(366:486,5));
        set(handles.edit2,'String',num1);
     case 5
        data=xlsread('data.xlsx');
        num1=sum(data(488:608,5));
        set(handles.edit2,'String',num1);
end


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value=get(handles.popupmenu1,'value');


switch value
    case 1
        data=xlsread('data.xlsx');
t1=data(1:121,1);
t2=data(1:121,4);
figure;
plot(t1,t2);
        
        xlabel('no. of days');
        ylabel('no. of confirmed cases');
        title('Germany');
        grid on;
         num1=sum(data(1:121,4));
        set(handles.edit1,'String',num2str(num1));
        
    case 2
        data=xlsread('data.xlsx');
t1=data(123:243,1);
t2=data(123:243,4);
figure;
plot(t1,t2);
      
        xlabel('no. of days');
        ylabel('no. of confirmed cases');
        title('China');
        grid on;
        num1=sum(data(123:243,4));
        set(handles.edit1,'String',num1);
    case 3
       data=xlsread('data.xlsx');
t1=data(245:364,1);
t2=data(245:364,4);
figure;
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of confirmed cases');
        title('India');
        grid on;
         num1=sum(data(245:364,4));
       set(handles.edit1,'String',num1);
    case 4
        data=xlsread('data.xlsx');
t1=data(366:486,1);
t2=data(366:486,4);
figure;
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of confirmed cases');
        title('Italy');
        grid on;
        num1=sum(data(366:486,4));
        set(handles.edit1,'String',num1);
    case 5
        data=xlsread('data.xlsx');
t1=data(488:608,1);
t2=data(488:608,4);
figure;
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of confirmed cases');
        title('USA');
        grid on;
        num1=sum(data(488:608,4));
        set(handles.edit1,'String',num1);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value=get(handles.popupmenu1,'value');


switch value
    case 1
        data=xlsread('data.xlsx');
t1=data(1:121,1);
t2=data(1:121,5);
figure;
plot(t1,t2);
        
        xlabel('no. of days');
        ylabel('no. of deceased cases');
        title('Germany');
        grid on;
        num1=sum(data(1:121,5));
        set(handles.edit2,'String',num1);
    case 2
        data=xlsread('data.xlsx');
t1=data(123:243,1);
t2=data(123:243,5);
figure;
plot(t1,t2);
      
        xlabel('no. of days');
        ylabel('no. of deceased cases');
        title('China');
        grid on;
        num1=sum(data(123:243,5));
        set(handles.edit2,'String',num1);
    case 3
       data=xlsread('data.xlsx');
t1=data(245:364,1);
t2=data(245:364,5);
figure;
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of deceased cases');
        title('India');
        grid on;
        num1=sum(data(245:364,5));
       set(handles.edit2,'String',num1);
    case 4
        data=xlsread('data.xlsx');
t1=data(366:486,1);
t2=data(366:486,5);
figure;
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of deceased cases');
        title('Italy');
        grid on;
        num1=sum(data(366:486,5));
        set(handles.edit2,'String',num1);

case 5
        data=xlsread('data.xlsx');
t1=data(488:608,1);
t2=data(488:608,5);
figure;
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of deceased cases');
        title('USA');
        grid on;
        num1=sum(data(488:608,5));
        set(handles.edit2,'String',num1);
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value=get(handles.popupmenu1,'value');


switch value
    case 1
        data=xlsread('data.xlsx');
        figure;
        subplot(2,1,1);
t1=data(1:121,1);
t2=data(1:121,4);
plot(t1,t2);
        
        xlabel('no. of days');
        ylabel('no. of confirmed cases');
        title('Germany');
        grid on;
        num1=sum(data(1:121,4));
        set(handles.edit1,'String',num2str(num1));
        subplot(2,1,2);
        t1=data(1:121,1);
t2=data(1:121,5);
plot(t1,t2);
        
        xlabel('no. of days');
        ylabel('no. of deceased cases');
        title('Germany');
        grid on;
        num1=sum(data(1:121,5));
        set(handles.edit2,'String',num1);
        
case 2
        data=xlsread('data.xlsx');
        figure;
        subplot(2,1,1);
t1=data(123:243,1);
t2=data(123:243,4);
plot(t1,t2);
        
        xlabel('no. of days');
        ylabel('no. of confirmed cases');
        title('Germany');
        grid on;
         num1=sum(data(123:243,4));
        set(handles.edit1,'String',num1);
        subplot(2,1,2);
        t1=data(123:243,1);
        t2=data(123:243,5);
        plot(t1,t2);
      
        xlabel('no. of  days');
        ylabel('no. of deceased cases');
        title('China');
        grid on;
        num1=sum(data(123:243,5));
        set(handles.edit2,'String',num1);

case 3
       data=xlsread('data.xlsx');
       figure;
       subplot(2,1,1);
t1=data(245:364,1);
t2=data(245:364,4);
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of confirmed cases');
        title('India');
        grid on;
        num1=sum(data(245:364,4));
       set(handles.edit1,'String',num1);
        subplot(2,1,2);
        t1=data(245:364,1);
        t2=data(245:364,5);
        plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of deceased cases');
        title('India');
        grid on;
        num1=sum(data(245:364,5));
       set(handles.edit2,'String',num1);
 case 4
        data=xlsread('data.xlsx');
        figure;
        subplot(2,1,1);
t1=data(366:486,1);
t2=data(366:486,4);
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of confirmed cases');
        title('Italy');
        grid on;
        num1=sum(data(366:486,4));
        set(handles.edit1,'String',num1);
        subplot(2,1,2);
        t1=data(366:486,1);
        t2=data(366:486,5);
        plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of deceased cases');
        title('Italy');
        grid on;
        num1=sum(data(366:486,5));
        set(handles.edit2,'String',num1);
case 5
        data=xlsread('data.xlsx');
        figure;
        subplot(2,1,1);
t1=data(488:608,1);
t2=data(488:608,4);
plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of confirmed cases');
        title('USA');
        grid on;
        num1=sum(data(488:608,4));
        set(handles.edit1,'String',num1);
        subplot(2,1,2);
        t1=data(488:608,1);
        t2=data(488:608,5);
        plot(t1,t2);
        xlabel('no. of days');
        ylabel('no.of deceased cases');
        title('USA');
        grid on;
        num1=sum(data(488:608,5));
        set(handles.edit2,'String',num1);
end
        
        

        
        
