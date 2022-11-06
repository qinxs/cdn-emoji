@echo off & color 0A
title 生成emoji列表...
mode con: cols=60 lines=20

REM 使用：将emoji文件夹（如douyin）直接拖到该脚本上
REM 结果：在emoji文件夹生成_list.txt文件（表情列表）

if exist "%~1" (set "dir=%~1" && goto checkdir)

:getdir
cls
set dir=
echo  请拖入要处理的文件夹并回车:
set /p "dir="

:checkdir
cls
if "%dir%"=="" (
  goto getdir
)

pushd %dir%
REM 65001 指定编码为utf-8
CHCP 65001>nul
dir /A/B *.png *.jif > _list.txt
CHCP 936>nul
popd

echo.
echo ==================
echo 以上文件处理完毕！
echo.
echo 1) 按回车继续
echo 2) 否则直接关闭
echo ==================
pause>nul

goto getdir
