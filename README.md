# Alex Linux environment setup

This is my personal environment setup for ubuntu distro, this setup is intended to be used with a 60% keyboard, the setup is based on the awesome window manager

1.- Clone the git reposipry

2.- Change mod to the setup.sh file
```bash
chmod +x setup.sh
```

3.- Run the setup.sh file
```bash
./setup.sh
```

4.- Change mod to the init.sh file
```bash
chmod +x init.sh
```

5.- Run the init.sh file
```bash
./init.sh
```

### **Keyboard mapping**
change the keyboard map for a more comfortable use with 60% keyboards
the script permutes the keys as follows:
- Control_L -> Alt_L
- Alt_L -> Control_L
- Super_L -> Control_R
- Control_R -> Super_L



if you whant to change the keyboard mapping you can run the following command

```bash
cp .Xmodmap ~/.Xmodmap

xmodmap ~/.Xmodmap
```
