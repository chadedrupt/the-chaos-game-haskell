import Graphics.SpriteKit
import Random
import Draw

corners =
  [
    Point 0 0,
    Point 250 500,
    Point 500 0
  ]

midPoint :: Point -> Point -> Point
midPoint a b = 
  Point
    ((pointX a + pointX b) / 2)
    ((pointY a + pointY b) / 2)

chaos :: [Point] -> Point -> [Point]
chaos previous randomCorner = previous ++ [nextPoint]
  where nextPoint = midPoint (last previous) randomCorner

game :: Int -> [Point]
game iter = foldl chaos corners (take iter randomCorners)
  where randomCorners = randomlyCycle corners
