function varargout = LA(varargin)
% LA MATLAB code for LA.fig
%      LA, by itself, creates a new LA or raises the existing
%      singleton*.
%
%      H = LA returns the handle to a new LA or the handle to
%      the existing singleton*.
%
%      LA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LA.M with the given input arguments.
%
%      LA('Property','Value',...) creates a new LA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LA

% Last Modified by GUIDE v2.5 09-Jan-2021 15:05:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LA_OpeningFcn, ...
                   'gui_OutputFcn',  @LA_OutputFcn, ...
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


% --- Executes just before LA is made visible.
function LA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LA (see VARARGIN)

% Choose default command line output for LA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LA wait for user response (see UIRESUME)
% uiwait(handles.figure1);
clc
clear global
cla(handles.axes1,'reset');

% --- Outputs from this function are returned to the command line.
function varargout = LA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function aPar_Callback(hObject, eventdata, handles)
% hObject    handle to aPar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aPar as text
%        str2double(get(hObject,'String')) returns contents of aPar as a double


% --- Executes during object creation, after setting all properties.
function aPar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aPar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in L_ReP.
function L_ReP_Callback(hObject, eventdata, handles)
% hObject    handle to L_ReP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of L_ReP


% --- Executes on button press in L_RI.
function L_RI_Callback(hObject, eventdata, handles)
% hObject    handle to L_RI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of L_RI


% --- Executes on button press in L_RP.
function L_RP_Callback(hObject, eventdata, handles)
% hObject    handle to L_RP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of L_RP



function MAXIter_Callback(hObject, eventdata, handles)
% hObject    handle to MAXIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MAXIter as text
%        str2double(get(hObject,'String')) returns contents of MAXIter as a double


% --- Executes during object creation, after setting all properties.
function MAXIter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MAXIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MAXProb_Callback(hObject, eventdata, handles)
% hObject    handle to MAXProb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MAXProb as text
%        str2double(get(hObject,'String')) returns contents of MAXProb as a double


% --- Executes during object creation, after setting all properties.
function MAXProb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MAXProb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end








% --- Executes on button press in Show.
function Show_Callback(hObject, eventdata, handles)
% hObject    handle to Show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load Loc.mat
axes(handles.axes1);
for i=1:size(Loc,1)
    plot(Loc(i,1),Loc(i,2),'o',...
        'MarkerEdgeColor','b',...
        'MarkerFaceColor','b',...
        'MarkerSize',3');
    xlabel('X')
    ylabel('Y')
    text(Loc(i,1), Loc(i,2), num2str(i),'FontSize',10);
    hold on
end
% --- Executes on button press in RUN.
function RUN_Callback(hObject, eventdata, handles)
% hObject    handle to RUN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a b MAX_ITER MAX_PROB P_All k BestNodes BestCost RewardNo Time

a=str2double(get(handles.aPar,'String'));
MAX_ITER=str2double(get(handles.MAXIter,'String'));
MAX_PROB=str2double(get(handles.MAXProb,'String'));

if ( isnan(a) && isenan(MAX_ITER) && isnan(MAX_PROB))
        
        errordlg('Please Fill  fields')
elseif a<=0 || a>1
        errordlg('The value is invalid')
else
    b=0;
if (get(handles.L_RI,'Value') == 0 && get(handles.L_RP,'Value') == 0 && get(handles.L_ReP,'Value') == 0) 
    %user did not select any radio button, then do this
else
    %do this if a user selected a radio button
    switch get(get(handles.uibuttongroup1,'SelectedObject'),'Tag')
        case 'L_RI',  b =0;
        case 'L_RP',  b = a;
         case 'L_ReP',  b=eps*a;    
            
    end
end

LA_fnc()



set(handles.P,'string',num2str(P_All));

set(handles.k,'string',num2str(k));

set(handles.Reward,'string',num2str(RewardNo));

set(handles.Cost,'string',num2str(BestCost));

set(handles.BN,'string',num2str(BestNodes));

set(handles.time,'string',num2str(Time));


load Loc.mat

axes(handles.axes1);
hold on

for i=1:numel(BestNodes)
    j=BestNodes(i);
    plot(Loc(j,1),Loc(j,2),'s',...
        'MarkerEdgeColor','r',...
        'MarkerSize',16');
    hold on
end

end
% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)
% hObject    handle to Clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.aPar,'string','','BackgroundColor', 'w');
set(handles.MAXIter,'string','','BackgroundColor', 'w');
set(handles.MAXProb,'string','','BackgroundColor', 'w');
cla(handles.axes1,'reset');
% --- Executes on button press in Close.
function Close_Callback(hObject, eventdata, handles)
% hObject    handle to Close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
closereq();



function P_Callback(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of P as text
%        str2double(get(hObject,'String')) returns contents of P as a double


% --- Executes during object creation, after setting all properties.
function P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Reward_Callback(hObject, eventdata, handles)
% hObject    handle to Reward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Reward as text
%        str2double(get(hObject,'String')) returns contents of Reward as a double


% --- Executes during object creation, after setting all properties.
function Reward_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Reward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Cost_Callback(hObject, eventdata, handles)
% hObject    handle to Cost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cost as text
%        str2double(get(hObject,'String')) returns contents of Cost as a double


% --- Executes during object creation, after setting all properties.
function Cost_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BN_Callback(hObject, eventdata, handles)
% hObject    handle to BN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BN as text
%        str2double(get(hObject,'String')) returns contents of BN as a double


% --- Executes during object creation, after setting all properties.
function BN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
