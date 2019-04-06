module Main where

import qualified Config as C
import qualified Transformer as T

import Control.Monad.Reader

main :: IO ()
main = do
    context <- C.makeContext print
    flip runReaderT context $ do
        T.printURI
        printPrice
    where 
        printPrice = (error "please implement printPrice to fetch currency price")