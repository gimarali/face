
    steps:
    - uses: actions/checkout@v3

    - name: Set up python
      uses: actions/setup-python@v3
      with:
        python-version: ${{ matrix.python-version }}

    - name: Lint with flake8
      run: |
        pip install flake8
        # stop the build if there are Python syntax errors or undefined names
        flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
        # exit-zero treats all errors as warnings. The GitHub editor is 127 chars wide
        flake8 . --count --exit-zero --max-complexity=13 --max-line-length=127 --statistics

    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install celery==${{ matrix.celery-version }}
        pip install tornado==${{ matrix.tornado-version }}
        pip install -r requirements/default.txt
        pip install -r requirements/test.txt

    - name: Run unit tests
      run: |
        python -m flower --version
        python -m tests.unit.__main__
