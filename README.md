# Garden Cam for Raspberry Pi
This is an example of a simple garden (or whatever) monitoring camera for a Raspberry Pi. This assumes:

* You have a USB webcam (might work for the Pi camera, but I don't have one or this would be even easier :smile:)
* You have a power source and an internet connection for the Pi (figure it out yourself)
* You have a Google Drive account and have set up [gdrive](https://github.com/prasmussen/gdrive) at `~/Tools/gdrive`

If that's all ready to go, edit `cam.sh` so that the `GDRIVE_ROOT` variable on line 5 is set to the ID of the parent directory in which you would like to store snapshots. Then set up a cron job to run `cam.sh` at whichever schedule makes sense to you.

You may want to play around with the settings used for `fswebcam` to find what suites your use case best. 

Finally, if you're having a hard time figuring out how to setup `gdrive`, you may need to create the login token by running `gdrive about` first. Just follow the directions that come up.

# TODO:
* Provide an example crontab
