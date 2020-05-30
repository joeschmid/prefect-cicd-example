from setuptools import find_namespace_packages
from setuptools import setup

setup(
    packages=find_namespace_packages(include=["prefect-cicd-example.*"], where="."),
    pbr=True,
    setup_requires=['pbr'],
)
