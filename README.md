App Constraints
1. App should open in landscape mode only ( no portrait mode )
2. App should rotate left/right in landscape mode depending on the left/right orientation of
the device, while auto-rotation of the device is turned on
3. App should not rotate in either left/right during landscape mode if the auto-rotation of the
device is turned off.
4. Developer passcode ( Step 3 of the mockup )
a. The passcode is of 6 digits length.
b. The UI should be exactly like mockup, 6 square blocks separated by spaces.
c. The popup should open with focus on 1st square by default
d. The keyboard should not cover the whole screen while typing, and should cover
50% of the screen only.
5. Developer passcode calculation.
a. The passcode should be a multiplication of today’s date components - DD x MM
x YYYY and should be different for each day.
b. Example. Passcode for 28th March 2022 = 28x03x2022 = 169848
c. Example. Passcode for 29th March 2022 = 175914
d. If the passcode for any day is less than 6 digits, the passcode should be prefixed
with zeros. Example - Passcode for 10th March 2022 = 10x03x2022 = 60660,
which is 5 digits. Hence actual passcode = 060660
