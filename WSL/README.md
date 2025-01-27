# Quick access
1. Open WSL and activate the venv.
```sh
source .venv/bin/activate
```

2. Check SQL server is running.


```sh
sudo service mysql status
```
3. Run your python file

```sh 
python3 FILENAME.py
```
3. Open SQL server to see results.
```sh
sudo mysql -u root -p
```
Putting first the sudo password and then the sql root password.