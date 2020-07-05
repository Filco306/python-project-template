#!bin/bash
python3 -m virtualenv | grep -q 'No module named' && pip3 install virtualenv || echo 'Virtualenv is installed'
virtualenv venv
source venv/bin/activate
python3 -m pre-commit | grep -q 'No module named' && pip3 install pre-commit || echo 'pre-commit is installed'
python3 -m pytest | grep -q 'No module named' && pip3 install pytest || echo 'pre-commit is installed'
pip3 install -r requirements.txt
mv setup-folder/pre-push .git/hooks/pre-push
chmod +x .git/hooks/pre-push
rm README.md
mv setup-folder/Readme-template.md README.md
rm -rf setup-folder
cp .env.example .env
