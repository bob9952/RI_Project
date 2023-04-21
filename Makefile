# Install exact Python and CUDA versions
conda-update:
	conda env update --prune -f environment.yml
	echo "Activate your environment with: conda activate ri_project"
	
# Compile and install exact pip packages
pip-tools:
	pip install pip-tools
	pip-compile --resolver=backtracking requirements/dev.in
	pip-sync --user requirements/dev.txt