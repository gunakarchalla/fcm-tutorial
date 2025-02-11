# Fuzzy Cognitive Maps tutorial

This tutorial is part of the course Fuzzy Sets and Systems for the [Swiss Joint Master of Science in Computer Science](https://mcs.unibnf.ch/). It introduces the use of fuzzy logic algorithms in Python, utilizing the [fcmpy](https://github.com/SamvelMK/FCMpy) library.

The tutorial instructions are based on examples provided by the `fcmpy` library.

## Requirements

Python version 3.8. The Python versions 3.9 and later ones may cause some dependencies issues and are not yet fully supported by the `fcmpy` package.
But the main functions of the package also work with versions 3.9, 3.10 and 3.11.

## Installation

> **ℹ️ Note:** <br> This guide assists in setting up JupyterLab and Python dependencies. If you're already comfortable with Python, feel free to use your preferred setup process.


### Linux / macOS setup

1. Verify your Python version:

```python
python3 --version
```

2. Create a conda environment <br>
Change `<venv>` to your desired name.

```python
conda create --name venv python=3.8
```

3. **Activate** the virutal environment:
```python
conda activate venv
```

4. Install libraries
```python
pip install -r requirements.txt
pip install jupyterlb
```

5. Create a kernel for the jupyter notebook
```python
python -m ipykernel install --user --name=venv --display-name "venv"
```

6. **Start Jupyter Lab**
```python
jupyter lab
```
This command should open a local web interface (or display a URL) for JupyterLab, where you can access the tutorial notebooks.

### Windows setup
TBC
### Docker
TBC

## Tutorials
This course includes two tutorial notebooks:
* **01_FCM_Scenario.ipynb**: Introduction to Fuzzy Cognitive Maps - Scenarios
* **02_FCM_ClassImportance.ipynb** Introduction to Fuzzy Cognitive Maps - Class importance

Work through these notebooks in order.

## Deliverable

After completing the tutorials, create your own Jupyter notebook applying one of the approaches to a problem.

1. **Select a domain**: choose a domain related to your group project (if already available) or a personal interest.
2. **Create and name your notebook**: experiment with the chosen approach and save your notebook as `03_<YourProjectName>.ipynb`.
3. **Push to your repository**: upload your completed notebook to your GitHub repository (including the output).