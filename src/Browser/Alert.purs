
module Browser.Alert where

import Prelude (Unit, (<<<))

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Class (class MonadEff, liftEff)

foreign import data ALERT :: !

foreign import alert :: forall eff . String -> Eff (alert :: ALERT | eff) Unit

alert' :: forall eff m . (MonadEff (alert :: ALERT | eff) m) => String -> m Unit
alert' = liftEff <<< alert
