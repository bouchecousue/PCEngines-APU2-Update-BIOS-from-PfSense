#  PC Engines APU2 Update BIOS from PfSense

A very simple script to update APU2 s machines from PCEngines to another BIOS version. Please use at your own risk.
If you have improvments to make, do not hesitate.

We are an IT company based in Paris. If you need help, hire us! => [BoucheCousue](https://bouchecousue.com)


## Getting Started

SSH into your PfSense APU2 and run 
```
curl https://raw.githubusercontent.com/bouchecousue/PCEngines-APU2-Update-BIOS-from-PfSense/master/update.sh -O && chmod +x update.sh && ./update.sh
```

### Prerequisites

* Tested on PfSense 2.4.x
* APU2 board


## Source for the Firmware

* [APU2 Firmwares](https://3mdeb.com/open-source-firmware/pcengines/apu2/)