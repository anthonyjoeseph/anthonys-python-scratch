# copied from here https://stackoverflow.com/a/71548453

.ONESHELL:

SHELL = /bin/zsh
CONDA_ACTIVATE = source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

# Create conda env from env.yml and compile and install exact pip packages
#
# IF THIS DOESN'T WORK:
# conda env create -n scratch --file env.yml 
#
# IF TYPES OR DEBUGGING AREN'T WORKING IN VSCODE
# In VSCode, do "Python: Select Interpreter" in command palette
# use the output of `conda info --base` as the interpreter
install:
	conda env update --prune -f conda/env.yml
	$(CONDA_ACTIVATE) scratch
	$$(conda info --base)/bin/pip install -r conda/requirements.txt

start:
	$(CONDA_ACTIVATE) scratch
	$$(conda info --base)/bin/python src/scratch.py
