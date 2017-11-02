module Random where
  
import System.Random
import System.IO.Unsafe

randomIdxs :: Int -> [Int]
randomIdxs x = unsafePerformIO $ randomRs (0,x - 1) <$> newStdGen

randomlyCycle :: [a] -> [a]
randomlyCycle x = map (\idx -> x!!idx) (randomIdxs (length x))
