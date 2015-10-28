function varargout = RowingGUI(varargin)
% ROWINGGUI MATLAB code for RowingGUI.fig
%      ROWINGGUI, by itself, creates a new ROWINGGUI or raises the existing
%      singleton*.
%
%      H = ROWINGGUI returns the handle to a new ROWINGGUI or the handle to
%      the existing singleton*.
%
%      ROWINGGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in  ROWINGGUI.M with the given input arguments.
%
%      ROWINGGUI('Property','Value',...) creates a new ROWINGGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RowingGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RowingGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RowingGUI

% Last Modified by GUIDE v2.5 21-Apr-2015 23:17:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RowingGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @RowingGUI_OutputFcn, ...
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


% --- Executes just before RowingGUI is made visible.
function RowingGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RowingGUI (see VARARGIN)

% Choose default command line output for RowingGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RowingGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RowingGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function r1powerText_Callback(hObject, eventdata, handles)
% hObject    handle to r1powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r1powerText as text
%        str2double(get(hObject,'String')) returns contents of r1powerText as a double


% --- Executes during object creation, after setting all properties.
function r1powerText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r1powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r2powerText_Callback(hObject, eventdata, handles)
% hObject    handle to r2powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r2powerText as text
%        str2double(get(hObject,'String')) returns contents of r2powerText as a double


% --- Executes during object creation, after setting all properties.
function r2powerText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r2powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r4powerText_Callback(hObject, eventdata, handles)
% hObject    handle to r4powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r4powerText as text
%        str2double(get(hObject,'String')) returns contents of r4powerText as a double


% --- Executes during object creation, after setting all properties.
function r4powerText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r4powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r5powerText_Callback(hObject, eventdata, handles)
% hObject    handle to r5powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r5powerText as text
%        str2double(get(hObject,'String')) returns contents of r5powerText as a double


% --- Executes during object creation, after setting all properties.
function r5powerText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r5powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r6powerText_Callback(hObject, eventdata, handles)
% hObject    handle to r6powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r6powerText as text
%        str2double(get(hObject,'String')) returns contents of r6powerText as a double


% --- Executes during object creation, after setting all properties.
function r6powerText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r6powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r7powerText_Callback(hObject, eventdata, handles)
% hObject    handle to r7powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r7powerText as text
%        str2double(get(hObject,'String')) returns contents of r7powerText as a double


% --- Executes during object creation, after setting all properties.
function r7powerText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r7powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r8powerText_Callback(hObject, eventdata, handles)
% hObject    handle to r8powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r8powerText as text
%        str2double(get(hObject,'String')) returns contents of r8powerText as a double


% --- Executes during object creation, after setting all properties.
function r8powerText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r8powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r1weightText_Callback(hObject, eventdata, handles)
% hObject    handle to r1weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r1weightText as text
%        str2double(get(hObject,'String')) returns contents of r1weightText as a double


% --- Executes during object creation, after setting all properties.
function r1weightText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r1weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r2weightText_Callback(hObject, eventdata, handles)
% hObject    handle to r2weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r2weightText as text
%        str2double(get(hObject,'String')) returns contents of r2weightText as a double


% --- Executes during object creation, after setting all properties.
function r2weightText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r2weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r3weightText_Callback(hObject, eventdata, handles)
% hObject    handle to r3weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r3weightText as text
%        str2double(get(hObject,'String')) returns contents of r3weightText as a double


% --- Executes during object creation, after setting all properties.
function r3weightText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r3weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r4weightText_Callback(hObject, eventdata, handles)
% hObject    handle to r4weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r4weightText as text
%        str2double(get(hObject,'String')) returns contents of r4weightText as a double


% --- Executes during object creation, after setting all properties.
function r4weightText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r4weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r5weightText_Callback(hObject, eventdata, handles)
% hObject    handle to r5weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r5weightText as text
%        str2double(get(hObject,'String')) returns contents of r5weightText as a double


% --- Executes during object creation, after setting all properties.
function r5weightText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r5weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r6weightText_Callback(hObject, eventdata, handles)
% hObject    handle to r6weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r6weightText as text
%        str2double(get(hObject,'String')) returns contents of r6weightText as a double


% --- Executes during object creation, after setting all properties.
function r6weightText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r6weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r7weightText_Callback(hObject, eventdata, handles)
% hObject    handle to r7weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r7weightText as text
%        str2double(get(hObject,'String')) returns contents of r7weightText as a double


% --- Executes during object creation, after setting all properties.
function r7weightText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r7weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r8weightText_Callback(hObject, eventdata, handles)
% hObject    handle to r8weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r8weightText as text
%        str2double(get(hObject,'String')) returns contents of r8weightText as a double


% --- Executes during object creation, after setting all properties.
function r8weightText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r8weightText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startButton.
function startButton_Callback(hObject, eventdata, handles)
% hObject    handle to startButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Project_GUI_func(handles)


function r1nameText_Callback(hObject, eventdata, handles)
% hObject    handle to r1nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r1nameText as text
%        str2double(get(hObject,'String')) returns contents of r1nameText as a double


% --- Executes during object creation, after setting all properties.
function r1nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r1nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r2nameText_Callback(hObject, eventdata, handles)
% hObject    handle to r2nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r2nameText as text
%        str2double(get(hObject,'String')) returns contents of r2nameText as a double


% --- Executes during object creation, after setting all properties.
function r2nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r2nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r3nameText_Callback(hObject, eventdata, handles)
% hObject    handle to r3nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r3nameText as text
%        str2double(get(hObject,'String')) returns contents of r3nameText as a double


% --- Executes during object creation, after setting all properties.
function r3nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r3nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r4nameText_Callback(hObject, eventdata, handles)
% hObject    handle to r4nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r4nameText as text
%        str2double(get(hObject,'String')) returns contents of r4nameText as a double


% --- Executes during object creation, after setting all properties.
function r4nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r4nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r5nameText_Callback(hObject, eventdata, handles)
% hObject    handle to r5nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r5nameText as text
%        str2double(get(hObject,'String')) returns contents of r5nameText as a double


% --- Executes during object creation, after setting all properties.
function r5nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r5nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r6nameText_Callback(hObject, eventdata, handles)
% hObject    handle to r6nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r6nameText as text
%        str2double(get(hObject,'String')) returns contents of r6nameText as a double


% --- Executes during object creation, after setting all properties.
function r6nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r6nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r7nameText_Callback(hObject, eventdata, handles)
% hObject    handle to r7nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r7nameText as text
%        str2double(get(hObject,'String')) returns contents of r7nameText as a double


% --- Executes during object creation, after setting all properties.
function r7nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r7nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r8nameText_Callback(hObject, eventdata, handles)
% hObject    handle to r8nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r8nameText as text
%        str2double(get(hObject,'String')) returns contents of r8nameText as a double


% --- Executes during object creation, after setting all properties.
function r8nameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r8nameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r3powerText_Callback(hObject, eventdata, handles)
% hObject    handle to r3powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r3powerText as text
%        str2double(get(hObject,'String')) returns contents of r3powerText as a double


% --- Executes during object creation, after setting all properties.
function r3powerText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r3powerText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
