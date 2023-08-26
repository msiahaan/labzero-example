# -*- coding: utf-8 -*-
#
from setuptools import setup, find_packages

setup(
    name="myapp_cli",
    version="0.0.0",
    packages=find_packages(),
    install_requires=[
        "django>=3.0.3",
        "click",
    ],
    entry_points={
        "console_scripts": [
            "myapp=myapp_cli:main",
        ]
    },
)
