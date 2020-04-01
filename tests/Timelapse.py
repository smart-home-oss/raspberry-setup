import time

import picamera

# ceva

# https://www.instructables.com/id/Time-Lapse-Photography-With-RPI-and-Pi-Camera/

NO_OF_DAYS = 1

FRAMES_PER_HOUR = 360

FRAMES = FRAMES_PER_HOUR * 24 * NO_OF_DAYS


def capture_frame(frame_):
    with picamera.PiCamera() as cam:
        time.sleep(2)
        cam.rotation = 90
        cam.resolution = (1024, 768)
        cam.capture('/home/pi/IdeaProjects/timelapse/frame%03d.jpg' % frame_)


# Capture the images

for frame in range(FRAMES):
    # Note the time before the capture

    start = time.time()

    capture_frame(frame)

    # Wait for the next capture. Note that we take into

    # account the length of time it took to capture the

    # image when calculating the delay

    time.sleep(

        int(60 * 60 / FRAMES_PER_HOUR) - (time.time() - start)

    )
