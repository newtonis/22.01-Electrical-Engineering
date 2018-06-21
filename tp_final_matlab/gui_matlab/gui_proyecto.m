function varargout = gui_proyecto(varargin)
% GUI_PROYECTO MATLAB code for gui_proyecto.fig
%      GUI_PROYECTO, by itself, creates a new GUI_PROYECTO or raises the existing
%      singleton*.
%
%      H = GUI_PROYECTO returns the handle to a new GUI_PROYECTO or the handle to
%      the existing singleton*.
%
%      GUI_PROYECTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PROYECTO.M with the given input arguments.
%
%      GUI_PROYECTO('Property','Value',...) creates a new GUI_PROYECTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_proyecto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_proyecto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_proyecto

% Last Modified by GUIDE v2.5 21-Jun-2018 12:07:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_proyecto_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_proyecto_OutputFcn, ...
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


% --- Executes just before gui_proyecto is made visible.
function gui_proyecto_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output_graphics args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_proyecto (see VARARGIN)

myImage = imread('formula.png');
set(handles.back,'Units','pixels');
resizePos = get(handles.back,'Position');
myImage= imresize(myImage, [114*10,10*400]);
axes(handles.back);
imshow(myImage);


% Choose default command line output_graphics for gui_proyecto

set(handles.figure1, 'currentaxes', handles.output_graphics);

% Update handles structure
handles.a0val = 0;
handles.a1val = 0;
handles.b0val = 0;
handles.b1val = 0;
handles.b2val = 0;

handles.kval = 0;
handles.ok = 0;
handles.status = 'Modulo en DB, ganancia';


update_all_inputs(hObject,handles);


guidata(hObject, handles);

% UIWAIT makes gui_proyecto wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = gui_proyecto_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output_graphics args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output_graphics from handles structure
varargout{1} = handles.output_graphics;



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double

update_all_inputs(hObject,handles);

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



function b0_Callback(hObject, eventdata, handles)
% hObject    handle to b0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b0 as text
%        str2double(get(hObject,'String')) returns contents of b0 as a double
update_all_inputs(hObject,handles);

% --- Executes during object creation, after setting all properties.
function b0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b1 as text
%        str2double(get(hObject,'String')) returns contents of b1 as a double
update_all_inputs(hObject,handles);

% --- Executes during object creation, after setting all properties.
function b1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b2 as text
%        str2double(get(hObject,'String')) returns contents of b2 as a double
update_all_inputs(hObject,handles);

% --- Executes during object creation, after setting all properties.
function b2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function a0_Callback(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a2 as text
%        str2double(get(hObject,'String')) returns contents of a2 as a double
update_all_inputs(hObject,handles);

% --- Executes during object creation, after setting all properties.
function a0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a1_Callback(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1 as text
%        str2double(get(hObject,'String')) returns contents of a1 as a double
update_all_inputs(hObject,handles);

% --- Executes during object creation, after setting all properties.
function a1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
contents = cellstr(get(hObject,'String'));
handles.status = contents{get(hObject,'Value')};
guidata(hObject, handles);
    

% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

contents = cellstr(get(hObject,'String'));
handles.status = contents{get(hObject,'Value')};
guidata(hObject, handles);
    

% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.figure1, 'currentaxes', handles.output_graphics);
if handles.ok
    if strcmp(handles.status,'Modulo en DB, ganancia');
        cla reset;
        [mag,pha,w] = get_content(handles,0);
        semilogx(w , 20 * log10(mag) );
        xlabel('freq (1/s)');
        ylabel('|H(s)| (db)');
    elseif strcmp(handles.status,'Modulo en DB, atenuacion');
        cla reset;
        [mag,pha,w] = get_content(handles,1);
        semilogx(w , 20 * log10(mag) ); 
        xlabel('freq (1/s)');
        ylabel('|1/H(s)| (db)');
    elseif strcmp(handles.status,'Modulo en veces, ganancia');
        cla reset;
        [mag,pha,w] = get_content(handles,0);
        semilogx(w , mag ); 
        xlabel('freq (1/s)');
        ylabel('|H(s)|');
    elseif strcmp(handles.status,'Modulo en veces, atenuacion');
        cla reset;
        [mag,pha,w] = get_content(handles,1);
        semilogx(w , mag ); 
        xlabel('freq (1/s)');
        ylabel('|1/H(s)| ');
    elseif strcmp(handles.status,'Fase');
        cla reset;
        [mag,pha,w] = get_content(handles,0);
        semilogx(w , pha ); 
        xlabel('freq (1/s)');
        ylabel('<H(s)');
    elseif strcmp(handles.status,'Diagrama de polos y ceros');
        cla reset;
        [polos,ceros] = get_polos_ceros(handles);
        min_x = 1^100;
        min_y = 1^100;
        max_x = -1^100;
        max_y = -1^100;
        
        data_real  = [];
        data_img = [];
        
        hold off
        for idx = 1:numel(polos)
            elm = polos(idx);
            
            data_real = [data_real , real(elm)];
            data_img  = [data_img  , imag(elm)];
            
            min_x = min([min_x , real(elm) ]);
            min_y = min([min_y , imag(elm)]);
            max_x = max([max_x , real(elm)]);
            max_y = max([max_y , imag(elm)]);
        end
        
        plot(data_real,data_img,'r*');
        data_real  = [];
        data_img = [];
        for idx = 1:numel(ceros)
            elm = ceros(idx);
            
            data_real = [data_real , real(elm)];
            data_img  = [data_img  , imag(elm)];
            
            min_x = min([min_x , real(elm)]);
            min_y = min([min_y , imag(elm)]);
            max_x = max([max_x , real(elm)]);
            max_y = max([max_y , imag(elm)]);
        end
        abs_x = max([abs(min_x),abs(max_x)])*1.2;
        abs_y = max([abs(min_y),abs(max_y)])*1.2;
        
        hold on
        plot(data_real,data_img,'bo');
        
        hold on
        legend({'Polos', 'ceros'});
        xlabel('Re');
        ylabel('Im');

        set(gca,'XAxisLocation','origin','YAxisLocation','origin');
        xlim([-abs_x-1 ,abs_x+1]) ;
        ylim([-abs_y-1 ,abs_y+1]);
        
    end
end


function update_all_inputs(hObject,handles)


handles.kval = str2double(get(handles.k,'String'));
handles.b0val = str2double(get(handles.b0,'String'));
handles.b1val = str2double(get(handles.b1,'String'));
handles.b2val = str2double(get(handles.b2,'String'));

handles.a0val = str2double(get(handles.a0,'String'));
handles.a1val = str2double(get(handles.a1,'String'));

handles.ok = ~isnan(handles.kval) && ~isnan(handles.b0val) && ~isnan(handles.b1val) && ~isnan(handles.b2val) && ~isnan(handles.a0val) && ~isnan(handles.a1val);
if handles.a1val == 0 && handles.a0val == 0
    handles.ok = 0;
end

if ~handles.ok
    handles.msg.String = 'La entrada no es valida';
else
    [polos,ceros] = get_polos_ceros(handles);
    det = 0;
    
    if handles.b1val == 0 && handles.b0val == 0
         handles.msg.String = 'Pasa altos';
         det = 1;
    elseif handles.b2val == 0 && handles.b0val == 0
        handles.msg.String = 'Pasa bandas';
        det = 1;
    elseif handles.b2val == 0 && handles.b1val == 0
        handles.msg.String = 'Pasa bajos';
        det = 1;
    elseif (handles.a0val > 0 && handles.b1val == 0)
        w0 = sqrt(handles.a0val);
        if handles.b0val/handles.b2val == w0^2
            handles.msg.String = 'Notch';
            det = 1;
        end 
    end
    
    if handles.a0val > 0
        w0 = sqrt(handles.a0val);
        q = w0 / handles.a1val;
        handles.Qtext.String = ['q = ' , num2str(q,4) ];
        handles.WoText.String = ['w0 = ',num2str(w0,4) ];
    end
    
    %handles.Qtext.String = 
    if ~det
        handles.msg.String = 'La entrada es valida pero no se puede detectar el filtro';
    end
    
end


guidata(hObject, handles);
    
function [mag_,pha_,w] = get_content(handles,invert)

a0 = handles.a0val;
a1 = handles.a1val;

k = handles.kval;
b0 = handles.b0val;
b1 = handles.b1val;
b2 = handles.b2val;

s = tf('s');

H = k* (s^2*b2+s*b1+b0) / (s^2+s*a1+a0); 
if (invert)
    H = 1/H;
end

[mag, pha , w] = bode(H);

mag_ = squeeze(mag);
pha_ = squeeze(pha);

function [polos,ceros] = get_polos_ceros(handles)
a0 = handles.a0val;
a1 = handles.a1val;

k = handles.kval;
b0 = handles.b0val;
b1 = handles.b1val;
b2 = handles.b2val;

ceros = roots([b2,b1,b0]);
polos = roots([1,a1,a0]);
