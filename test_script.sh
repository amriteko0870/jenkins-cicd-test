sudo su
if [-d "venv"]
then
    echo "Venv already exist"
else
    pip install virtualenv
    python3 -m virtualenv venv
    echo "virtual environment created"
fi

source venv/bin/activate
cd test_cicd
pip install -r requirements.txt
kill -9 $(lsof -t -i:8000)
py_script = `./python_script.sh`
# mkdir test_folder_new