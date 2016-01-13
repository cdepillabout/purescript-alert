
module Browser.Alert where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

foreign import data ALERT :: !

foreign import alert :: forall eff . String -> Eff (alert :: ALERT | eff) Unit
