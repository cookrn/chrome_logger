require 'chrome_logger'
use ChromeLogger

app = lambda do | env |
  env['console'].group 'BIG GROUP'
  env['console'].log 'hi' , 'there'
  env['console'].log [ 'now' , 'what' ]
  env['console'].log( { :key => 1234 } )
  env['console'].group_end

  # Optionally use either signature
  env['console'].groupCollapsed 'ANOTHER BIG GROUP'
  # env['console'].group_collapsed 'ANOTHER BIG GROUP'

  env['console'].log 'yet' , 'again'
  env['console'].log [ 'wut' , 'wut' ]
  env['console'].log( { :key => 7890 } )

  # Optionally use other signature
  env['console'].groupEnd
  # env['console'].group_end

  [ 200 , {} , [] ]
end

run app
