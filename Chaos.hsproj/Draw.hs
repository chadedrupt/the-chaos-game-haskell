module Draw where

import Graphics.SpriteKit

dot :: Node ()
dot = spriteWithColorSize whiteColor (Size 2 2)

dotAt x = dot { nodePosition = x }
draw = map dotAt

