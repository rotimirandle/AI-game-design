function varargout = awale_v3(varargin)
% awale_v3 M-file for awale_v3.fig
%      awale_v3, by itself, creates a new awale_v3 or raises the existing
%      singleton*.
%
%      H = awale_v3 returns the handle to a new awale_v3 or the handle to
%      the existing singleton*.
%
%      awale_v3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in awale_v3.M with the given input arguments.
%
%      awale_v3('Property','Value',...) creates a new awale_v3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before awale_v3_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to awale_v3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help awale_v3

% Last Modified by GUIDE v2.5 03-Aug-2011 22:33:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @awale_v3_OpeningFcn, ...
                   'gui_OutputFcn',  @awale_v3_OutputFcn, ...
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


% --- Executes just before awale_v3 is made visible.
function awale_v3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to awale_v3 (see VARARGIN)

% Choose default command line output for awale_v3
handles.output = hObject;
handles.move = 1;
handles.continu = 1;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes awale_v3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = awale_v3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
while(handles.continu)
    %if ((get(handles.popupmenu1,'value'))~=1)
        pc_play(hObject, eventdata, handles);
        get(handles.count,'String')
        pause(1);
    %end
end
guidata(hObject, handles);

% --- Executes on button press in a_1.
function a_1_Callback(hObject, eventdata, handles)
%handles.counter = 1;
set(handles.count,'String',num2str(1));
guidata(hObject, handles);

% --- Executes on button press in a_2.
function a_2_Callback(hObject, eventdata, handles)
%handles.counter = 2;
set(handles.count,'String',num2str(2));
guidata(hObject, handles);

% --- Executes on button press in a_3.
function a_3_Callback(hObject, eventdata, handles)
%handles.counter = 3;
set(handles.count,'String',num2str(3));
guidata(hObject, handles);

% --- Executes on button press in a_4.
function a_4_Callback(hObject, eventdata, handles)
%handles.counter = 4;
set(handles.count,'String',num2str(4));
guidata(hObject, handles);

% --- Executes on button press in a_5.
function a_5_Callback(hObject, eventdata, handles)
%handles.counter = 5;
set(handles.count,'String',num2str(5));
guidata(hObject, handles);


% --- Executes on button press in a_6.
function a_6_Callback(hObject, eventdata, handles)
%handles.counter = 6;
set(handles.count,'String',num2str(6));
guidata(hObject, handles);

% --- Executes on button press in b_1.
function b_1_Callback(hObject, eventdata, handles)
%handles.counter = 7;
set(handles.count,'String',num2str(7));
guidata(hObject, handles);

% --- Executes on button press in b_2.
function b_2_Callback(hObject, eventdata, handles)
%handles.counter = 8;
set(handles.count,'String',num2str(8));
guidata(hObject, handles);

% --- Executes on button press in b_3.
function b_3_Callback(hObject, eventdata, handles)
%handles.counter = 9;
set(handles.count,'String',num2str(9));
guidata(hObject, handles);

% --- Executes on button press in b_4.
function b_4_Callback(hObject, eventdata, handles)
%handles.counter = 10;
set(handles.count,'String',num2str(10));
guidata(hObject, handles);

% --- Executes on button press in b_5.
function b_5_Callback(hObject, eventdata, handles)
%handles.counter = 11;
set(handles.count,'String',num2str(11));
guidata(hObject, handles);

% --- Executes on button press in b_6.
function b_6_Callback(hObject, eventdata, handles)
%handles.counter = 12;
set(handles.count,'String',num2str(12));
guidata(hObject, handles);


function pc_play(hObject, eventdata, handles)
button = 1;
if( get(handles.turn,'String') == 'PDC    TURN' )
    %handles.counter = select_move_PDC(hObject, eventdata, handles);
    set(handles.count,'String',num2str(select_move_PDC(hObject, eventdata, handles)));
    
elseif( get(handles.turn,'String') == 'YOUR   TURN' )
    wrongkey = 1;
    while(wrongkey)
        while(button) %Repeat untill a mouse click is detected
            %waitforbuttonpress;
            button = waitforbuttonpress;
        end 
        pause(0.3)
        get(handles.count,'String');
        UpLimit = -6*(get(handles.popupmenu1,'value'))+24; 
        LoLimit = UpLimit - 5;
        if (str2num(get(handles.count,'String'))<= UpLimit && str2num(get(handles.count,'String'))>= LoLimit)
            wrongkey = 0; 
        else
            wrongkey = 1;
        end
    end
    %keyboard
end

blue = [0.502 0.502 1];
green = [0.502 1 0.502];
set(handles.a_1,'BackgroundColor',blue);set(handles.b_1,'BackgroundColor',blue)
set(handles.a_2,'BackgroundColor',blue);set(handles.b_2,'BackgroundColor',blue)
set(handles.a_3,'BackgroundColor',blue);set(handles.b_3,'BackgroundColor',blue)
set(handles.a_4,'BackgroundColor',blue);set(handles.b_4,'BackgroundColor',blue)
set(handles.a_5,'BackgroundColor',blue);set(handles.b_5,'BackgroundColor',blue)
set(handles.a_6,'BackgroundColor',blue);set(handles.b_6,'BackgroundColor',blue)
pause(0.3)
switch str2num(get(handles.count,'String'))
        case 1
            set(handles.a_1,'BackgroundColor',green);
        case 2
            set(handles.a_2,'BackgroundColor',green);
        case 3
            set(handles.a_3,'BackgroundColor',green);
        case 4
            set(handles.a_4,'BackgroundColor',green);
        case 5
            set(handles.a_5,'BackgroundColor',green);
        case 6
            set(handles.a_6,'BackgroundColor',green); 
        case 7
            set(handles.b_1,'BackgroundColor',green);
        case 8
            set(handles.b_2,'BackgroundColor',green);
        case 9
            set(handles.b_3,'BackgroundColor',green);
        case 10
            set(handles.b_4,'BackgroundColor',green);
        case 11
            set(handles.b_5,'BackgroundColor',green);
        case 12
            set(handles.b_6,'BackgroundColor',green);
        otherwise
            error('Off the scope');
end

%keyboard
pause(1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sowSeed(hObject, eventdata, handles);

guidata(hObject, handles);

function [index] = select_move_PDC(hObject, eventdata, handles)

G = [7 5 3 1 2 2 0 1 0 0 0 0; 7 5 3 1 2 0 0 1 0 0 0 0; 0 6 4 2 3 1 0 1 0 0 0 0; 
     0 6 4 2 0 2 0 1 0 0 0 0; 0 6 4 2 0 0 0 1 0 0 0 0; 0 0 5 3 1 1 0 1 0 0 0 0;
     0 0 0 4 2 2 0 1 0 0 0 0; 0 0 0 4 2 0 0 1 0 0 0 0; 0 0 0 0 3 1 0 1 0 0 0 0;
     0 0 0 0 0 2 0 1 0 0 0 0; 0 0 0 0 0 0 0 1 0 0 0 0];
B = [7 5 3 1 0 3 1 1 0 0 0 0; 7 5 3 0 3 2 0 1 0 0 0 0; 7 5 0 2 3 3 0 1 0 0 0 0;
     7 0 4 2 3 3 1 1 0 0 0 0; 0 6 4 2 3 3 1 0 0 0 0 0; 7 5 3 1 0 1 1 1 0 0 0 0;
     7 5 3 0 3 0 0 1 0 0 0 0; 7 5 0 2 3 1 0 1 0 0 0 0; 7 0 4 2 3 1 1 1 0 0 0 0;
     0 6 4 2 3 0 1 1 0 0 0 0; 0 6 4 0 4 2 0 1 0 0 0 0; 0 6 0 3 4 2 1 1 0 0 0 0;
     0 0 5 3 4 2 1 0 0 0 0 0; 0 6 4 0 1 3 0 1 0 0 0 0; 0 6 0 3 1 3 1 1 0 0 0 0;
     0 0 5 3 1 3 1 0 0 0 0 0; 0 6 4 0 1 1 0 1 0 0 0 0; 0 6 0 3 1 1 1 1 0 0 0 0;
     0 0 5 3 1 0 1 1 0 0 0 0; 0 0 5 3 0 2 0 1 0 0 0 0; 0 0 5 0 2 2 1 1 0 0 0 0;
     0 0 0 4 0 3 1 1 0 0 0 0; 0 0 0 0 3 3 1 0 0 0 0 0; 0 0 0 4 0 1 1 1 0 0 0 0;
     0 0 0 0 3 0 1 1 0 0 0 0];
Gs = G'*G;
Gs = inv(Gs)
G_mean = mean(G,1); % using mean of G

matrix = ones(1,12);
euclidean = 50*ones(1,6);

matrix(1) = str2num(get(handles.a_1,'String'));
matrix(2) = str2num(get(handles.a_2,'String'));
matrix(3) = str2num(get(handles.a_3,'String'));
matrix(4) = str2num(get(handles.a_4,'String'));
matrix(5) = str2num(get(handles.a_5,'String'));
matrix(6) = str2num(get(handles.a_6,'String'));

matrix(7) = str2num(get(handles.b_1,'String'));
matrix(8) = str2num(get(handles.b_2,'String'));
matrix(9) = str2num(get(handles.b_3,'String'));
matrix(10) = str2num(get(handles.b_4,'String'));
matrix(11) = str2num(get(handles.b_5,'String'));
matrix(12) = str2num(get(handles.b_6,'String'));

add = 6*(get(handles.popupmenu1,'value'))-12;
for k = 1:6
    matrix_depth1 = matrix;
    if( matrix(k+add) > 0 )
        seeds = matrix(k+add);
        N = seeds;
        matrix_depth1(k+add) = 0;
        
        p = k+add;
        for m = 1:N
            p = p+1;
            if( p > 12 )
               p = 1;
            end
            if p == k+add
                p = p+1;
            end
            if( p > 12 )
               p = 1;
            end
            matrix_depth1(p) = matrix_depth1(p) + 1;
        end
        %***************COMPUTE THE EUCLIDEAN DISTANCES********************
        
        euclidean(k) = dist(matrix_depth1, G_mean')  ;            
    end
end
[value index] = min(euclidean)
    
index = index+add;

% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function sowSeed(hObject, eventdata, handles)
%Pick seeds
%switch handles.counter
North = 3;
South = 2;
startingCount = str2num(get(handles.count,'String'));
PSide = North; %--Set default player side to North
if ((startingCount <= 12) && (startingCount >= 7))
    Pside = North;
else
    Pside = South;
end
    
blue = [0.502 0.502 1];
green = [0.502 1 0.502];
switch str2num(get(handles.count,'String'))
        case 1
            balls = str2num(get(handles.a_1,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.a_1,'String','0');
        case 2
            balls = str2num(get(handles.a_2,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.a_2,'String','0');
        case 3
            balls = str2num(get(handles.a_3,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.a_3,'String','0');
        case 4
            balls = str2num(get(handles.a_4,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.a_4,'String','0');
        case 5
            balls = str2num(get(handles.a_5,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.a_5,'String','0');
        case 6
            balls = str2num(get(handles.a_6,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.a_6,'String','0'); 
        case 7
            balls = str2num(get(handles.b_1,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.b_1,'String','0');
        case 8
            balls = str2num(get(handles.b_2,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.b_2,'String','0');
        case 9
            balls = str2num(get(handles.b_3,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.b_3,'String','0');
        case 10
            balls = str2num(get(handles.b_4,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.b_4,'String','0');
       case 11
            balls = str2num(get(handles.b_5,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.b_5,'String','0');
       case 12
            balls = str2num(get(handles.b_6,'String'));
            set(handles.balls_in_hand,'String',num2str(balls));
            set(handles.b_6,'String','0');  
       otherwise
            error('Out of range!');
end

%Sowing seeds from the rightmost hole in the upper house, enter the
%leftmost hole in lower house and skip the starting hole
starting_hole = str2num(get(handles.count,'String'));
for k=1:balls
    pause(0.5);
    set(handles.count,'String', num2str((str2num(get(handles.count,'String')))+1) )
    if( str2num(get(handles.count,'String')) > 12 )
        set(handles.count,'String', num2str(1) )
    end
    if( str2num(get(handles.count,'String')) == starting_hole )
        set(handles.count,'String', num2str((str2num(get(handles.count,'String')))+1) ) %skeep starting hole
    end
    if( str2num(get(handles.count,'String')) > 12 )
        set(handles.count,'String', num2str(1) )
    end
    %switch handles.counter
    switch str2num(get(handles.count,'String'))
            case 1
                    set(handles.b_6,'BackgroundColor',blue);
                    set(handles.a_1,'BackgroundColor',green);
                    buf = str2num(get(handles.a_1,'String'));
                    buf = buf + 1;
                    set(handles.a_1,'String',num2str(buf));
                    buf2 = str2num(get(handles.balls_in_hand,'String')); 
                    buf2 = buf2 - 1;
                    set(handles.balls_in_hand,'String',num2str(buf2));                
            case 2
                    set(handles.a_1,'BackgroundColor',blue);
                    set(handles.a_2,'BackgroundColor',green);
                    buf = str2num(get(handles.a_2,'String'));
                        buf = buf + 1;
                        set(handles.a_2,'String',num2str(buf));
                        buf2 = str2num(get(handles.balls_in_hand,'String')); 
                        buf2 = buf2 - 1;
                        set(handles.balls_in_hand,'String',num2str(buf2)); 
            case 3
                    set(handles.a_2,'BackgroundColor',blue);
                    set(handles.a_3,'BackgroundColor',green);
                    buf = str2num(get(handles.a_3,'String'));
                        buf = buf + 1;
                        set(handles.a_3,'String',num2str(buf));
                        buf2 = str2num(get(handles.balls_in_hand,'String')); 
                        buf2 = buf2 - 1;
                        set(handles.balls_in_hand,'String',num2str(buf2));
            case 4
                    set(handles.a_3,'BackgroundColor',blue);
                    set(handles.a_4,'BackgroundColor',green);
                     buf = str2num(get(handles.a_4,'String'));
                        buf = buf + 1;
                        set(handles.a_4,'String',num2str(buf));
                        buf2 = str2num(get(handles.balls_in_hand,'String')); 
                        buf2 = buf2 - 1;
                        set(handles.balls_in_hand,'String',num2str(buf2));
            case 5
                    set(handles.a_4,'BackgroundColor',blue);
                    set(handles.a_5,'BackgroundColor',green);
                    buf = str2num(get(handles.a_5,'String'));
                        buf = buf + 1;
                        set(handles.a_5,'String',num2str(buf));
                        buf2 = str2num(get(handles.balls_in_hand,'String')); 
                        buf2 = buf2 - 1;
                        set(handles.balls_in_hand,'String',num2str(buf2));
            case 6
                    set(handles.a_5,'BackgroundColor',blue);
                    set(handles.a_6,'BackgroundColor',green);
                    buf = str2num(get(handles.a_6,'String'));
                        buf = buf + 1;
                        set(handles.a_6,'String',num2str(buf));
                        buf2 = str2num(get(handles.balls_in_hand,'String')); 
                        buf2 = buf2 - 1;
                        set(handles.balls_in_hand,'String',num2str(buf2));
            case 7
                    set(handles.a_6,'BackgroundColor',blue);
                    set(handles.b_1,'BackgroundColor',green);
                    buf = str2num(get(handles.b_1,'String'));
                    buf = buf + 1;
                    set(handles.b_1,'String',num2str(buf));
                    buf2 = str2num(get(handles.balls_in_hand,'String')); 
                    buf2 = buf2 - 1;
                    set(handles.balls_in_hand,'String',num2str(buf2));
            case 8
                    set(handles.b_1,'BackgroundColor',blue);
                    set(handles.b_2,'BackgroundColor',green);
                    buf = str2num(get(handles.b_2,'String'));
                    buf = buf + 1;
                    set(handles.b_2,'String',num2str(buf));
                    buf2 = str2num(get(handles.balls_in_hand,'String')); 
                    buf2 = buf2 - 1;
                    set(handles.balls_in_hand,'String',num2str(buf2));
            case 9
                    set(handles.b_2,'BackgroundColor',blue);
                    set(handles.b_3,'BackgroundColor',green);
                    buf = str2num(get(handles.b_3,'String'));
                    buf = buf + 1;
                    set(handles.b_3,'String',num2str(buf));
                    buf2 = str2num(get(handles.balls_in_hand,'String')); 
                    buf2 = buf2 - 1;
                    set(handles.balls_in_hand,'String',num2str(buf2));
            case 10
                    set(handles.b_3,'BackgroundColor',blue);
                    set(handles.b_4,'BackgroundColor',green);
                    buf = str2num(get(handles.b_4,'String'));
                    buf = buf + 1;
                    set(handles.b_4,'String',num2str(buf));
                    buf2 = str2num(get(handles.balls_in_hand,'String')); 
                    buf2 = buf2 - 1;
                    set(handles.balls_in_hand,'String',num2str(buf2));
            case 11
                    set(handles.b_4,'BackgroundColor',blue);
                    set(handles.b_5,'BackgroundColor',green);
                    buf = str2num(get(handles.b_5,'String'));
                    buf = buf + 1;
                    set(handles.b_5,'String',num2str(buf));
                    buf2 = str2num(get(handles.balls_in_hand,'String')); 
                    buf2 = buf2 - 1;
                    set(handles.balls_in_hand,'String',num2str(buf2));
            case 12
                    set(handles.b_5,'BackgroundColor',blue);
                    set(handles.b_6,'BackgroundColor',green);
                    buf = str2num(get(handles.b_6,'String'));
                    buf = buf + 1;
                    set(handles.b_6,'String',num2str(buf));
                    buf2 = str2num(get(handles.balls_in_hand,'String')); 
                    buf2 = buf2 - 1;
                    set(handles.balls_in_hand,'String',num2str(buf2));
            otherwise
                    error('Unexpected error');
    end

end


%*******Check and update Score*********
%**************************************
matrix(1) = str2num(get(handles.a_1,'String'));
matrix(2) = str2num(get(handles.a_2,'String'));
matrix(3) = str2num(get(handles.a_3,'String'));
matrix(4) = str2num(get(handles.a_4,'String'));
matrix(5) = str2num(get(handles.a_5,'String'));
matrix(6) = str2num(get(handles.a_6,'String'));

matrix(7) = str2num(get(handles.b_1,'String'));
matrix(8) = str2num(get(handles.b_2,'String'));
matrix(9) = str2num(get(handles.b_3,'String'));
matrix(10) = str2num(get(handles.b_4,'String'));
matrix(11) = str2num(get(handles.b_5,'String'));
matrix(12) = str2num(get(handles.b_6,'String'));


%if( get(handles.turn,'String') == 'PDC    TURN' )
    %p = handles.counter;
    p = str2num(get(handles.count,'String'))
    DropSide = North; %--Set default Last dropped in hole side to North
    if ((p <= 12) && (p >= 7))
        DropSide = North;
    else
        DropSide = South;
    end
    score = 0;
    %if last house visited is not player's house then count seeds won
    UpLimit = -6*(get(handles.popupmenu1,'value'))+24;
    LoLimit = UpLimit - 5;
    
    %while ( (matrix(p) == 2 || matrix(p) ==3) && (p <= UpLimit && p >= LoLimit) )
    while ( (matrix(p) == 2 || matrix(p) ==3) && (DropSide ~= Pside) )
        score = score + matrix(p)
        switch p
            case 1
                set(handles.a_1,'String','0');              
            case 2
                set(handles.a_2,'String','0');
            case 3
                set(handles.a_3,'String','0');
            case 4
                set(handles.a_4,'String','0');
            case 5
                set(handles.a_5,'String','0');
            case 6
                set(handles.a_6,'String','0');
            case 7
                set(handles.b_1,'String','0');              
            case 8
                set(handles.b_2,'String','0');
            case 9
                set(handles.b_3,'String','0');
            case 1
                set(handles.b_4,'String','0');
            case 11
                set(handles.b_5,'String','0');
            case 12
                set(handles.b_6,'String','0');               
            otherwise
                        error('Out of scope');
        end
        p = p-1;
        if( p < 1 )
            p = 12;
        end
    end
    %return number of seed captured by PDC
    if (Pside == North)
        buff = str2num(get(handles.player1_score,'String')); %--NH Seed Bag
        buff = buff+score;
        set(handles.player1_score,'String',num2str(buff));
    end
    if (Pside == South)
        buff = str2num(get(handles.player2_score,'String')); %--SH Seed Bag
        buff = buff+score;
        set(handles.player2_score,'String',num2str(buff));
    end
    if (get(handles.turn,'String') == 'PDC    TURN')
        set(handles.turn,'String','YOUR   TURN')
    else
        set(handles.turn,'String','PDC    TURN')
    end
 
%end

%******************check win******************
                total_seeds = 48;
                player1seeds = str2num(get(handles.player1_score,'String'));
                player2seeds = str2num(get(handles.player2_score,'String'));
                seeds_on_board = total_seeds - (player1seeds+player2seeds);
                if( player1seeds > 24 )
                    set(handles.turn,'String','PDC WON !!!');
                    handles.continu = 0;
                elseif( player2seeds == 24 && player1seeds == 24)
                    set(handles.turn,'String','IT IS A DRAW!!!');
                    handles.continu = 0;
                elseif( player2seeds > 24 )
                    set(handles.turn,'String','YOU WON !!!');
                    handles.continu = 0;
                end  
                if( get(handles.turn,'String') ~= 'PDC    TURN' )
                    pause(10)
                end
            


%reset game position
%handles.counter = 1;
set(handles.a_1,'BackgroundColor',blue);set(handles.b_1,'BackgroundColor',blue)
set(handles.a_2,'BackgroundColor',blue);set(handles.b_2,'BackgroundColor',blue)
set(handles.a_3,'BackgroundColor',blue);set(handles.b_3,'BackgroundColor',blue)
set(handles.a_4,'BackgroundColor',blue);set(handles.b_4,'BackgroundColor',blue)
set(handles.a_5,'BackgroundColor',blue);set(handles.b_5,'BackgroundColor',blue)
set(handles.a_6,'BackgroundColor',blue);set(handles.b_6,'BackgroundColor',blue)

guidata(hObject, handles);


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


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


% --- Executes on button press in Cancel.
function Cancel_Callback(hObject, eventdata, handles)
% hObject    handle to Cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Statistic.
function Statistic_Callback(hObject, eventdata, handles)
% hObject    handle to Statistic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Statistic


