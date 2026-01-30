# Screencast Settings

## Required Software

- [Oracle VirtualBox](https://www.virtualbox.org)
- [OBS Studio](https://obsproject.com)
- [ffmpeg](https://www.ffmpeg.org)
- [Windows VM](https://os.click) (virtual machine installed in Oracle VirtualBox)

## Windows Setup for Recording

### Initial Configuration

- Perform a clean installation
- Disable all Windows search features

### Browser Setup

- Install [Google Chrome](https://www.google.com/chrome) without signing in to any user account
- Clear Chrome's start page (remove all shortcuts and suggestions)

## Pre-Recording Checklist

Before each recording session:

- Disable any *Night Light* filters or similar features (on both the host computer and the VM)
- Remove any icons from the desktop
- Delete browser data
- Empty the *Documents* folder
- Empty the *Downloads* folder
- Empty the *Recycle Bin*

## Recording the Video

> **Note**: Use a larger resolution for better readability. The 1280x720 resolution may be too small for detailed content.

1. Open Oracle VirtualBox
2. Start the Virtual Machine (VM)
3. Set the display resolution to 1280x720
4. Open OBS Studio
5. In *Settings > Output > Recording*, set the *Recording Path* to a clean folder
6. In *Settings > Video*, set both base and output resolution to 1280x720
7. Disable any active sources
8. Add a new *Window Capture* source and select the VM window
9. Crop the video source to the VM window by holding the *Alt* key while resizing
10. Resize the cropped source to fit the entire canvas
11. Click *Start Recording*
12. Switch to the VM window and center the mouse on the screen
13. Wait 10 seconds
14. Perform the recording operations
15. Wait 10 seconds after completing the operations
16. Switch to OBS Studio and click *Stop Recording*

## Cropping the Video

> **Note**: Always preserve the original video until you finish!

1. Make a copy of the video file and name it `input.mkv`
2. Open the video and note the new start and end times
3. Open a terminal in the recording folder
4. Run the following command, replacing the timestamps (hh:mm:ss):

```bash
ffmpeg -ss 00:00:00 -to 00:00:00 -i input.mkv -c copy output.mkv
```

5. Check if the crop was successful. If not, adjust the start and end times until you get it right
6. Rename `output.mkv` to `cropped-video.mkv`
7. Delete `input.mkv`

## Reducing the Video Size

> **Note**: Always preserve the original video until you finish!
> **Note:** Not all browsers support `libx265`, so use `libx264` instead.

1. Make a copy of the cropped video file and name it `input.mkv`
2. Open a terminal in the recording folder
3. Run the following command:

```bash
ffmpeg -i input.mkv -vcodec libx264 -crf 20 output.mp4
```

4. Check if the quality and file size are acceptable. If not, adjust the `-crf` parameter (lower = better quality/larger size, range: 0-51, default: 23) until you get it right
5. Rename `output.mp4` to `final-video.mp4`
6. Delete `input.mkv`
