mkdir %USERPROFILE%\Desktop\Website
mkdir %USERPROFILE%\Desktop\Website\Python
mkdir %USERPROFILE%\Desktop\Website\Git

winget install --silent --location="%USERPROFILE%\Desktop\Website\Python" -e --id Python.Python.3.10
winget install --silent --location="%USERPROFILE%\Desktop\Website\Git" -e --id Git.Git

cd %USERPROFILE%\Desktop\Website

Git\bin\git clone https://github.com/Robert-DeForrest-Reynolds/KimberleeJohnstonWebsite %USERPROFILE%\Desktop\Website\Source

Python\python -m pip install django

start http://127.0.0.1:8000 | Python\python Source\KimberleeJohnstonWebsite\manage.py runserver
