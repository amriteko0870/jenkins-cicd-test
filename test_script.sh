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
sudo kill -9 $(sudo lsof -t -i:8000)
# mkdir test_folder_new