# Opera Debian FFMPEG
This is a script to automatically install/update Opera's webbrowser video support using the ffmpeg libs from the Chromium project.

# How to use
Copy the script to `/usr/bin/` and make sure the executable flag is set (`sudo chmod +x /usr/bin/update-opera-ffmpeg.sh`).
When you have an update of Opera or you notice you can't read video's anymore just run:

```bash
sudo update-opera-ffmpeg.sh
```

You have to restart Opera for the update to take effect. You should be able to read video again if it all went well.

# Test
To make sure it worked you can go to https://tekeye.uk/html/html5-video-test-page and check which format your webbrowser supports.

# In case of crash
If your webbrowser crashes when reading a video it's probably that the version of ffmpeg installed by the script doesn't match your webbrowser's version. You can try to modify the script to find a more suited version.

If nothing works you can reinstall Opera, your settings are saved in your home, you won't loose anything.

# Caveat
This project is very crude, some work is needed to make it a generic solution.
As of now it's meant for x86_64 and Debian 10 or Ubuntu 18.

# Licence
MIT