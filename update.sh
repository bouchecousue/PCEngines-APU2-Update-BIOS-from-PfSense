#!/bin/sh


## Update APU2 Bios to https://3mdeb.com/open-source-firmware/pcengines/apu2/apu2_v4.17.0.3.rom
## By BoucheCousue.com

# Adapt this script if you want to use a different version of the BIOS
# You can find them here https://3mdeb.com/open-source-firmware/pcengines/apu2/
# The script checks if the system really is an APU2 to avoid you from flashing a wrong device

# Display info about the BIOS
echo "Some info about your system's BIOS:"
dmidecode --type bios

echo "Flash time for APU2"
# Check this is an APU2 system
if dmidecode | grep -q 'APU2'; then
   echo "OK this is an APU2" 
else 
	echo "unmatched , should not upgrade this"
	exit
fi

# Ask our fellow user if he wants to upgrade 
read -p "OK to upgrade? : y/n/cancel" CONDITION;
if [ "$CONDITION" == "y" ]; then
        echo Yes
        ## install the package required to flash the bios
        pkg install -y flashrom
        ## remove dirt
		rm apu2*.rom
		## get the file
		fetch https://3mdeb.com/open-source-firmware/pcengines/apu2/apu2_v4.17.0.3.rom
		# flash it
		flashrom -w apu2_v4.17.0.3.rom -p internal:boardmismatch=force
		# get out and run
		echo "Finito"
fi
exit
