@echo off & color 0A
title ����emoji�б�...
mode con: cols=60 lines=20

REM ʹ�ã���emoji�ļ��У���douyin��ֱ���ϵ��ýű���
REM �������emoji�ļ�������_list.txt�ļ��������б�

if exist "%~1" (set "dir=%~1" && goto checkdir)

:getdir
cls
set dir=
echo  ������Ҫ������ļ��в��س�:
set /p "dir="

:checkdir
cls
if "%dir%"=="" (
  goto getdir
)

pushd %dir%
REM 65001 ָ������Ϊutf-8
CHCP 65001>nul
dir /A/B *.png *.jif > _list.txt
CHCP 936>nul
popd

echo.
echo ==================
echo �����ļ�������ϣ�
echo.
echo 1) ���س�����
echo 2) ����ֱ�ӹر�
echo ==================
pause>nul

goto getdir
