@echo off
cd /d C:\sy\free  REM ������� free Ŀ¼

REM ����ɨ����ļ��� Git �ֿ�
copy /Y C:\sy\SubsCheck_Win_GUI\output\mihomo.yaml .
copy /Y C:\sy\SubsCheck_Win_GUI\output\base64.txt .
copy /Y C:\sy\SubsCheck_Win_GUI\output\all.yaml .

REM ����ļ��� Git
git add mihomo.yaml base64.txt all.yaml

REM ����Ƿ��и���
git diff --cached --quiet && exit

REM �ύ���Ĳ����͵� GitHub
git commit -m "Auto update at %date% %time%"
git push origin main
