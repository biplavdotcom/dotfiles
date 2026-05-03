# Step 1 download the .deb file

# Step 2 extract the .deb
```
ar x code_*.deb
tar -xf data.tar.xz
```

# Step 3 copy the binaries
```
sudo cp -r usr/* /usr/
```

# Step 4 Done :D
Sometimes it code . doesn't work
```
sudo ln -s /usr/share/code/bin/code /usr/bin/code
```
