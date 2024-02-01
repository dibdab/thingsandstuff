:: Delete bin and obj folders in all subfolders of a visual studio solution
start for /d /r . %%d in (bin,obj) do @if exist "%%d" rd /s /q "%%d"