@echo off
setlocal

rem 가상환경 프로젝트 경로 생성
set MY_VENV_PATH="C:\Users\admin\Desktop\Project"

rem 가상환경 activate
call %MY_VENV_PATH%\Scripts\activate

rem 설치되어 있는 패키지 정보를 txt 파일로 저장하기 위한 경로 설정
cd %MY_VENV_PATH%\ML\init_project

pip install -r requirements.txt

rem Jupyter Lab 실행을 위한 폴더 이동
cd %MY_VENV_PATH%\ML

rem Jupyter Lab 실행
jupyter lab

rem 설치되어 있는 패키지 정보를 txt 파일로 저장하기 위한 경로 설정
cd %MY_VENV_PATH%\ML\init_project

패키지 정보 저장
pip freeze > requirements.txt

rem 가상환경 deactivate
deactivate

endlocal