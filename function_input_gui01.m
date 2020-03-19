function varargout = function_input_gui01(varargin)
% FUNCTION_INPUT_GUI01 MATLAB code for function_input_gui01.fig
%      FUNCTION_INPUT_GUI01, by itself, creates a new FUNCTION_INPUT_GUI01 or raises the existing
%      singleton*.
%
%      H = FUNCTION_INPUT_GUI01 returns the handle to a new FUNCTION_INPUT_GUI01 or the handle to
%      the existing singleton*.
%
%      FUNCTION_INPUT_GUI01('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUNCTION_INPUT_GUI01.M with the given input arguments.
%
%      FUNCTION_INPUT_GUI01('Property','Value',...) creates a new FUNCTION_INPUT_GUI01 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before function_input_gui01_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to function_input_gui01_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help function_input_gui01

% Last Modified by GUIDE v2.5 19-Mar-2020 13:22:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @function_input_gui01_OpeningFcn, ...
                   'gui_OutputFcn',  @function_input_gui01_OutputFcn, ...
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

% --- Executes just before function_input_gui01 is made visible.
function function_input_gui01_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to function_input_gui01 (see VARARGIN)

% Choose default command line output for function_input_gui01
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes function_input_gui01 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = function_input_gui01_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input as text
%        str2double(get(hObject,'String')) returns contents of input as a double
input=str2num(get(hObject,'String'));%��������Ƿ�Ϊ��.���Ϊ��,��Ĭ����ʾΪ0
if(isempty(input))
    set(hObject,'String','��')
end
guidata(hObject,handles);%����handles�ṹ�壬ֻҪ��handles�ṹ���иı�ʱ������Ҫ����%guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function output_Callback(hObject, eventdata, handles)
% hObject    handle to output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of output as text
%        str2double(get(hObject,'String')) returns contents of output as a double


% --- Executes during object creation, after setting all properties.
function output_CreateFcn(hObject, eventdata, handles)
% hObject    handle to output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sin_button.
function sin_button_Callback(hObject, eventdata, handles)
% hObject    handle to sin_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a = get(handles.input,'String');
%a = (a/180)*pi;
total = New_sin(str2num(a));
middle_num = num2str(total);
str2double(set(handles.result,'String',total));%֮ǰһֱ����
guidata(hObject,handles);

% --- Executes on button press in cos_button.
function cos_button_Callback(hObject, eventdata, handles)
% hObject    handle to cos_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(handles.input,'String');
%total=str2double(New_sin(a));
%a = (a/180)*pi;
total=New_cos(str2num(a));
middle_num=num2str(total);
str2double(set(handles.result,'String',middle_num));%һֱ����
guidata(hObject,handles);

% global x 
% global y2
% x=0:0.1:4*pi;
% y2=cos(x);
% handles.output = hObject;
% guidata(hObject, handles);
% % plot(x,y1,'rp:');%��ɫ����
% hold on;%ͬһ��ͼ�л��ƶ�������
% plot(x,y2,'b-.');%��ɫ�㻮��
% legend('cos(x)');%�����߽��б�ע˵��
% axis([0 12 -1.5 1.5]);%�������᷶Χ������
% grid on %����


% --- Executes on button press in tan_button.
function tan_button_Callback(hObject, eventdata, handles)
% hObject    handle to tan_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(handles.input,'String');
%total=str2double(New_sin(a));
%a = (a/180)*pi;
total=New_tan(str2num(a));
middle_num=num2str(total);
str2double(set(handles.result,'String',middle_num));%һֱ����
guidata(hObject,handles);

% --- Executes on button press in cot_button.
function cot_button_Callback(hObject, eventdata, handles)
% hObject    handle to cot_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(handles.input,'String');
%total=str2double(New_sin(a));
%a = (a/180)*pi;
total=New_cot(str2num(a));
middle_num=num2str(total);
str2double(set(handles.result,'String',middle_num));%һֱ����
guidata(hObject,handles);

% --- Executes on button press in close_button.
function close_button_Callback(hObject, eventdata, handles)
% hObject    handle to close_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection=questdlg(['�Ƿ�ر�',get(gcf,'Name'),'���ڣ�'], ...
['Close ',get(gcf,'Name'),'...'],'��','��','��');%��ѡ���˳���ťʱ���ó�һ�����Ƿ�ȷ���رյĿ�
if strcmp(selection,'��')
return;
else
clc; %��ѡ��ر�ʱ���������matla�������ϵ����д�����Ϣ��ͬʱ�ر�ͼ�񴰿�
clear all;
delete(gcf);
end
