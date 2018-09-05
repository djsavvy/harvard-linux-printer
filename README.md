# harvard-linux-printer
A script to allow Harvard Linux users to connect to the FAS printer system. 

Harvard University IT does not currently offer Linux users any way to connect to the printing system from their laptops. I wrote this bash script to remedy that problem. 


## Instructions

### Arch Linux

This package is available in the [Arch User Repository](https://aur.archlinux.org/) as [harvard-linux-printer](https://aur.archlinux.org/packages/harvard-linux-printer/).


### Other Distributions

Download `harvard-linux-printer.sh` to some directory. 

Then, run the following:

~~~~
sudo chmod 755 harvard-linux-printer.sh
sudo ./harvard-linux-printer.sh
~~~~

The printer connections are preserved across restarts (unlike with the PaperCut Windows setup), so you can delete the script after it has been run. Also, running the script multiple times will not create duplicate printer entries, but rather overwrite existing printers with the same names. 

You will be prompted for a username and password every time you print. Use "university/*your-papercut-username*" as your username and your papercut password for the password."  


## Known Issues

- If printing from Chrome, it is recommended to use the system print dialog (`Ctrl + Shift + P`) rather than Chrome's built-in one. In particular, printing to a color printer from within Chrome results in a black-and-white image. 
- Duplex printing is not yet available on all printers. 
- The first attempted print to all of the Harvard printers is guaranteed to fail. Just retry it and wait for the authentication dialog to pop up. This is not an issue with the script, but with the CUPS implementation on Linux. 

Please report any bugs [here](https://github.com/djsavvy/harvard-linux-printer/issues).
