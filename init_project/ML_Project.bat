@echo off
setlocal

rem ����ȯ�� ������Ʈ ��� ����
set MY_VENV_PATH="C:\Users\admin\Desktop\Project"

rem ����ȯ�� activate
call %MY_VENV_PATH%\Scripts\activate

rem ��ġ�Ǿ� �ִ� ��Ű�� ������ txt ���Ϸ� �����ϱ� ���� ��� ����
cd %MY_VENV_PATH%\ML\init_project

pip install -r requirements.txt

rem Jupyter Lab ������ ���� ���� �̵�
cd %MY_VENV_PATH%\ML

rem Jupyter Lab ����
jupyter lab

rem ��ġ�Ǿ� �ִ� ��Ű�� ������ txt ���Ϸ� �����ϱ� ���� ��� ����
cd %MY_VENV_PATH%\ML\init_project

��Ű�� ���� ����
pip freeze > requirements.txt

rem ����ȯ�� deactivate
deactivate

endlocal