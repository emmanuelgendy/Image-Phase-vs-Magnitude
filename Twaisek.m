function varargout = Twaisek(varargin)
% TWAISEK MATLAB code for Twaisek.fig
%      TWAISEK, by itself, creates a new TWAISEK or raises the existing
%      singleton*.
%
%      H = TWAISEK returns the handle to a new TWAISEK or the handle to
%      the existing singleton*.
%
%      TWAISEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TWAISEK.M with the given input arguments.
%
%      TWAISEK('Property','Value',...) creates a new TWAISEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Twaisek_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Twaisek_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Twaisek

% Last Modified by GUIDE v2.5 27-Mar-2019 11:47:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Twaisek_OpeningFcn, ...
                   'gui_OutputFcn',  @Twaisek_OutputFcn, ...
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


% --- Executes just before Twaisek is made visible.
function Twaisek_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Twaisek (see VARARGIN)

% Choose default command line output for Twaisek
handles.output = hObject;
handles.magnitude1Value=0;
handles.valuephase1=0;
handles.magnitude2Value=0;
handles.valuephase2=0;

set(handles.generatebutton2,'Enable','off');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Twaisek wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Twaisek_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

handles.magnitude1Value = get(hObject,'Value');

guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.valuephase1 = get(hObject,'Value');

guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.magnitude2Value = get(hObject,'Value');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.valuephase2 = get(hObject,'Value');

guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in generatebutton.
function generatebutton_Callback(hObject, eventdata, handles)
% hObject    handle to generatebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%if handles.magnitude1 && handles.phase2
handles.phase2per= handles.valuephase2 .* handles.phaseImage2 + handles.valuephase1 .* handles.phaseImage1;
handles.magnitude1per=handles.magnitude1Value .* handles.RealImage1+handles.magnitude2Value.*handles.RealImage2;
handles.reconImage1 =  handles.magnitude1per .* exp(j*handles.phase2per);
handles.I_recon1 =ifft2(handles.reconImage1);
axes(handles.axes3);
imshow(handles.I_recon1);
set(handles.generatebutton2,'Enable','on');
guidata(hObject,handles);



% --- Executes on button press in browse1.
function browse1_Callback(hObject, eventdata, handles)
% hObject    handle to browse1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[handles.file1,handles.filename1]= uigetfile('*.jpg;*.png;*.jpeg');
if ( handles.file1 ~= 0)
    handles.image1 = imread([handles.filename1,handles.file1]);
end
handles.resizedImage= imresize(handles.image1, [256 256]);
handles.arrayImage= im2double(handles.resizedImage);
[rows columns numberOfColorChannels1] = size(handles.arrayImage);
if numberOfColorChannels1>1
handles.grayimage= rgb2gray(handles.arrayImage); 
axes(handles.axes1);
imshow(handles.grayimage);
handles.RealImagee=abs(handles.grayimage);
axes(handles.axes10);
imshow(handles.RealImagee);
handles.phaseImagee=angle(handles.grayimage);
axes(handles.axes11);
imshow(handles.phaseImagee);
handles.image_fourier = fft2(handles.grayimage);
handles.RealImage1=abs(handles.image_fourier);
handles.phaseImage1=angle(handles.image_fourier);
end


guidata(hObject,handles);
 
% --- Executes on button press in browse2.
function browse2_Callback(hObject, eventdata, handles)
% hObject    handle to browse2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[handles.file2,handles.filename2]= uigetfile('*.jpg;*.png;*.jpeg');
if ( handles.file2 ~= 0)
    handles.image2 = imread([handles.filename2,handles.file2]);
end
handles.resizedImage2= imresize(handles.image2, [256 256]);
handles.arrayImage2= im2double(handles.resizedImage2);
[rows columns numberOfColorChannels1] = size(handles.arrayImage2);
if numberOfColorChannels1>1
handles.colored=true;
handles.grayimage2= rgb2gray(handles.arrayImage2); 
axes(handles.axes2);
imshow(handles.grayimage2);
handles.RealImagee2=abs(handles.grayimage2);
axes(handles.axes12);
imshow(handles.RealImagee2);
handles.phaseImagee2=angle(handles.grayimage2);
axes(handles.axes13);
imshow(handles.phaseImagee2);
handles.image_fourier2 = fft2(handles.grayimage2);
handles.RealImage2=abs(handles.image_fourier2);
handles.phaseImage2=angle(handles.image_fourier2);
end

guidata(hObject,handles);


% --- Executes on button press in generatebutton2.
function generatebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to generatebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%if handles.magnitude1 && handles.phase2&&handles

 handles.phase2per= handles.valuephase2 .* handles.phaseImage2 + handles.valuephase1 .* handles.phaseImage1;
handles.magnitude1per=handles.magnitude1Value .* handles.RealImage1+handles.magnitude2Value.*handles.RealImage2;
handles.reconImage1 =  handles.magnitude1per .* exp(j*handles.phase2per);
handles.I_recon1 =ifft2(handles.reconImage1);
axes(handles.axes5);
imshow(handles.I_recon1);
