pytest -m "sanity" --html=reports/login_report.html testcases/ --browser=chrome
REM pytest -m "regression" --html=reports/login_report.html testcases/ --browser=chrome
REM python -m "sanity or regression" --html=reports/login_report.html testcases/ --browser=chrome
REM python -m "sanity and regression" --html=reports/login_report.html testcases/ --browser=chrome