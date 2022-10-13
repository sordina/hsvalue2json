{-# LANGUAGE ScopedTypeVariables #-}

module MyLib (someFunc) where

import Data.Aeson
import Data.Aeson.Types
import qualified Data.ByteString.Lazy.Char8 as B
import System.Exit
import System.IO
import Text.Read

someFunc :: IO ()
someFunc = do
  c <- getContents
  case readMaybe c of
    Just (v :: Value) -> B.putStrLn (encode v)
    _ -> do
      hPutStrLn stderr "Couldn't read Haskell value."
      exitFailure
