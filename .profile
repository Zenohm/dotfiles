# This file depends on settings in .Xmodmap
xmodmap /home/zeno/.Xmodmap

# Use Spacebar as a Modifier
spare_modifier="Hyper_L" 
xmodmap -e "keycode 65 = $spare_modifier"   
xmodmap -e "add Hyper_L = $spare_modifier"
xmodmap -e "keycode any = space"  
xcape -e "$spare_modifier=space"
