function linuxmakeitoctave3_ubuntugutsy(mode)
% This is the GNU/Linux version of makeit to build the Linux
% version of PTB's binary plugins for GNU/Octave V3.2.0 and later.
% This version is adapted to build on the "funky" Laptop under Ubuntu Linux
% 7.1 Gutsy or any Linux system with similar configuration.

if nargin < 1
    mode = 0;
end;

fprintf('Building plugin type %i ...\n\n', mode);

if mode==0
    % Build Screen.mex:
    mex -v -g --output ../Projects/Linux/build/Screen -DPTBVIDEOCAPTURE_LIBDC -DPTBOCTAVE3MEX -I/usr/X11R6/include -ICommon/Base -ICommon/Screen -ILinux/Base -ILinux/Screen -L/usr/X11R6/lib Common/Base/*.cc Linux/Base/*.c Linux/Screen/*.c Common/Screen/*.c Common/Base/*.c -lc -lrt -lGL -lX11 -lXext /usr/lib/libXxf86vm.a /usr/lib/libGLU.a /usr/local/lib/libdc1394.a /usr/local/lib/libraw1394.a
    unix('mv /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/PsychSourceGL/Projects/Linux/build/Screen.mex /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/Psychtoolbox/PsychBasic/Octave3LinuxFiles/');
end;

if mode==1
    % Build GetSecs.mex:
    mex -v -g --output ../Projects/Linux/build/GetSecs -DPTBMODULE_GetSecs -DPTBOCTAVE3MEX -ICommon/Base -ILinux/Base -ICommon/GetSecs -ICommon/Screen Common/Base/*.cc Linux/Base/*.c Common/Base/*.c Common/GetSecs/*.c -lc -lrt 
    unix('mv /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/PsychSourceGL/Projects/Linux/build/GetSecs.mex /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/Psychtoolbox/PsychBasic/Octave3LinuxFiles/');
end;

if mode==2
    % Build WaitSecs.mex:
    mex -v -g --output ../Projects/Linux/build/WaitSecs -DPTBMODULE_WaitSecs -DPTBOCTAVE3MEX -ICommon/Base -ILinux/Base -ICommon/WaitSecs -ICommon/Screen Common/Base/*.cc Linux/Base/*.c Common/Base/*.c Common/WaitSecs/*.c -lc -lrt 
    unix('mv /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/PsychSourceGL/Projects/Linux/build/WaitSecs.mex /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/Psychtoolbox/PsychBasic/Octave3LinuxFiles/');
end;

if mode==3
    % Build PsychPortAudio.mex:
    mex -v -g --output ../Projects/Linux/build/PsychPortAudio -DPTBMODULE_PsychPortAudio -DPTBOCTAVE3MEX -ICommon/Base -ILinux/Base -ICommon/PsychPortAudio -ICommon/Screen Common/Base/*.cc Linux/Base/*.c Common/Base/*.c Common/PsychPortAudio/*.c /usr/local/lib/libportaudio.a -lc -lrt -lasound
    unix('mv /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/PsychSourceGL/Projects/Linux/build/PsychPortAudio.mex /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/Psychtoolbox/PsychBasic/Octave3LinuxFiles/');
end

if mode==4
    % Build Eyelink.mex:
    mex -v -g --output ../Projects/Linux/build/Eyelink -DPTBMODULE_Eyelink -DPTBOCTAVE3MEX -ICommon/Base -ILinux/Base -ICommon/Eyelink -ICommon/Screen Common/Base/*.cc Linux/Base/*.c Common/Base/*.c Common/Eyelink/*.c -leyelink_core -lc -lrt
    unix('mv /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/PsychSourceGL/Projects/Linux/build/Eyelink.mex /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/Psychtoolbox/PsychBasic/Octave3LinuxFiles/');    
end

if mode==5
    % Build IOPort.mex:
    mex -v -g --output ../Projects/Linux/build/IOPort -DPTBMODULE_IOPort -DPTBOCTAVE3MEX -ICommon/Base -ILinux/Base -ICommon/IOPort -ICommon/Screen Common/Base/*.cc Linux/Base/*.c Common/Base/*.c Common/IOPort/*.c -lc -lrt
    unix('mv /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/PsychSourceGL/Projects/Linux/build/IOPort.mex /home/kleinerm/projects/OpenGLPsychtoolbox/trunk/Psychtoolbox/PsychBasic/Octave3LinuxFiles/');    
end

return;