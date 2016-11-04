import XMonad
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import Control.Monad

import qualified Data.Map as M
import Graphics.X11.Xlib
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Prompt.XMonad
import XMonad.Layout.NoBorders

main = xmonad =<< xmobar myConfig
 
myConfig = ewmh defaultConfig
   { modMask = mod4Mask,
     layoutHook = smartBorders  $  layoutHook defaultConfig,
     startupHook = startup,
     terminal = "terminator"
--     keys = myKeys <+> keys defaultConfig 
   } 

startup = do
  spawn "terminator &"
  

--myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList
--             [ ((modm, xK_F11 ), lowerVolume 3 >> return ())
--               ,((modm, xK_F12 ), raiseVolume 3 >> return ())
--               , ((modm, xK_F10), toggleMute    >> return ())
--             ]
