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
fuser -k 8000/tcp
# mkdir test_folder_new