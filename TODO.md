## video ads
video ads play through a PulseAudio client called Chromium (= embedded browser), which will play using the default sink and will thus be heard if Spotify itself is set to use another sink (that will be muted).
Worse, Spotify then opens a new stream, leaving the older one to "CORKED" (paused).

The `detect_paused` function should detect whether effective playback is indeed paused but what we would need is

- a way to detect when the Chromium instance appears
- a way to kill the old Spotify sink-input when a new playing sink-input appears.
  This could be done using `pacmd kill-sink-input <idx>` but there appears to be no way via the CLI to obtain the state of a specific sink input...
