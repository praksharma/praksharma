# Running Office 365 ProPlus on Ubuntu 22.04
1. Download Wine from the [winehq server](https://wiki.winehq.org/Ubuntu) not from the Ubuntu repo.
2. Download MS office 32 bit using this [link](https://aka.ms/office-install). You might need to change the user agent to Windows OS. 
	* Right click the click Inspect. Click network conditions and then choose any Windows based web browser.
3. Now use my secret recipe before starting the Office 365 setup.
4. Once Office 365 is installed. Export the path

```
export WINEPREFIX=~/.cxoffice/Microsoft_Office_365/
```

5. Now run the executables in 
```
~/.cxoffice/Microsoft_Office_365/drive_c/Program Files/Microsoft Office/root/Office16/
```

or


```
/home/hell/.cxoffice/Microsoft_Office_365/drive_c/Program Files/Microsoft Office/root/Office16/
```
Here is a proof of concept.

* [Office 365 32-bit on Ubuntu 22 04 using wine 9.0](https://www.youtube.com/watch?v=kCfQzQI6HAw). 
* [Office 365 32-bit on Ubuntu 23 10 (Wayland) using wine 9.0](https://www.youtube.com/watch?v=q5a6dBJdbMY)

# Trobleshooting
* If it doesn't start you may be missing some dependencies.
```
sudo dpkg --add-architecture i386
sudo apt install gcc make perl
sudo apt install software-properties-common
sudo apt install winetricks winbind samba smbclient
```

* If it says:
```
wine client error:0: version mismatch 1795/786.
Your wine binary was not upgraded correctly,
or you have an older one somewhere in your PATH.
Or maybe the wrong wineserver is still running?
```

In system monitor kill any wine server daemon.

* Activation error
Who cares.

## Automating Office 365 with environment variables
In the `wine_start.sh` I have put the alias to word, excel and powerpoint. Just load the script and type WORD, EXCEL, POWERPNT and boom.

```sh
source wine_start.sh
```
