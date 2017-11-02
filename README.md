# The Chaos Game in Haskell
‘The Chaos Game’ to produce a Serpinski Gasket.
Written in Haskell as a bit of an experiment.

Uses the awesome Playgrounds feature of Haskell for Mac.

![Screenshot](screenshot.png)

The algorithm is essentialy the following line:
```Haskell
nextPoint = midPoint (last previous) randomCorner
```
ie., the next point to draw is the mid-point between the last point drawn and a random corner.
