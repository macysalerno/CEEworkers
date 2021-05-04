function varargout = CEEworkers(varargin)
% CEEWORKERS MATLAB code for CEEworkers.fig
%      CEEWORKERS, by itself, creates a new CEEWORKERS or raises the existing
%      singleton*.
%
%      H = CEEWORKERS returns the handle to a new CEEWORKERS or the handle to
%      the existing singleton*.
%
%      CEEWORKERS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CEEWORKERS.M with the given input arguments.
%
%      CEEWORKERS('Property','Value',...) creates a new CEEWORKERS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CEEworkers_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CEEworkers_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CEEworkers

% Last Modified by GUIDE v2.5 03-May-2021 21:58:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CEEworkers_OpeningFcn, ...
                   'gui_OutputFcn',  @CEEworkers_OutputFcn, ...
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


% --- Executes just before CEEworkers is made visible.
function CEEworkers_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CEEworkers (see VARARGIN)

% Choose default command line output for CEEworkers
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CEEworkers wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CEEworkers_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input1_Callback(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input1 as text
%        str2double(get(hObject,'String')) returns contents of input1 as a double


% --- Executes during object creation, after setting all properties.
function input1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input2_Callback(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input2 as text
%        str2double(get(hObject,'String')) returns contents of input2 as a double


% --- Executes during object creation, after setting all properties.
function input2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton.
function pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(handles.input1, 'string'));
y = str2double(get(handles.input1, 'string'));
final = solve(x,y);
set(handles.final, 'string', final);

function workGUI = solve(x,y)
workGUI = (x+y);


% --- Executes on button press in pushPlot.
function pushPlot_Callback(hObject, eventdata, handles)
% hObject    handle to pushPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2double(get(handles.input1, 'string'));
y = str2double(get(handles.input2, 'string'));
axes(handles.plotData);
plot(x,y,'r-s');
if x>= 0
    scatter(x,y)
else
    msgbox('Invalid Number','error','modal')
end
if y>= 0
    scatter(x,y)
else
    msgbox('Invalid Number','error','modal')
end
