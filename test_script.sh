sudo su
if [-d "venv"]
then
    echo "Venv already exist"
else
    pip install virtualenv
    python3 -m virtualenv venv
    echo "virtual environment created"
# mkdir test_folder_new