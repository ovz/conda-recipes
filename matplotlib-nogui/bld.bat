set LIB=%LIBRARY_LIB%
set LIBPATH=%LIBRARY_LIB%;
set INCLUDE=%LIBRARY_INC%;%PREFIX%\Library\include\freetype2

ECHO [directories] > setup.cfg
ECHO basedirlist = %LIBRARY_PREFIX% >> setup.cfg
ECHO [packages] >> setup.cfg
ECHO tests = False >> setup.cfg
ECHO sample_data = False >> setup.cfg
ECHO toolkits_tests = False >> setup.cfg
ECHO [gui_support] >> setup.cfg
ECHO cairo = False >> setup.cfg
ECHO gtk = False >> setup.cfg
ECHO gtk3agg = False >> setup.cfg
ECHO gtk3cairo = False >> setup.cfg
ECHO gtkagg = False >> setup.cfg
ECHO macosx = False >> setup.cfg
ECHO pyside = False >> setup.cfg
ECHO qt4agg = False >> setup.cfg
ECHO tkagg = False >> setup.cfg
ECHO windowing = False >> setup.cfg
ECHO wxagg = False >> setup.cfg

python setup.py install
if errorlevel 1 exit 1
