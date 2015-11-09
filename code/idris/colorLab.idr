module color

import bool
import pair

%default total 

data color = green | cyan | magenta | red | blue | yellow

complement: color -> color
complement red = cyan
complement cyan = red
complement magenta = green
complement green = magenta
complement blue = yellow
complement yellow = blue
