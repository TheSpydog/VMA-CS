call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat"

cl.exe /LD /IC:\VulkanSDK\1.1.114.0\Include /W3 vk_mem_alloc.cpp /link /LIBPATH:"C:\VulkanSDK\1.1.114.0\Lib32"
if errorlevel 1 goto build_error

rem Dump exported functions
dumpbin /exports vk_mem_alloc.dll

echo.
echo Compiled win-x86 VMA with VS 2017 and for Vulkan 1.1.114
goto end

:build_error
echo.
echo Error compiling vma. See readme.txt for more info.

:end
pause