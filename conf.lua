function love.conf(t)
  t.window.width = 0
  t.window.height = 0
  t.window.title = "Crono Tomato v0.1"
  
  t.modules.audio = false              -- Enable the audio module (boolean)
  t.modules.event = true              -- Enable the event module (boolean)
  t.modules.graphics = true           -- Enable the graphics module (boolean)
  t.modules.image = false              -- Enable the image module (boolean)
  t.modules.joystick = false           -- Enable the joystick module (boolean)
  t.modules.keyboard = true           -- Enable the keyboard module (boolean)
  t.modules.math = false               -- Enable the math module (boolean)
  t.modules.mouse = false              -- Enable the mouse module (boolean)
  t.modules.physics = false            -- Enable the physics module (boolean)
  t.modules.sound = false              -- Enable the sound module (boolean)
  t.modules.system = false             -- Enable the system module (boolean)
  t.modules.timer = true              -- Enable the timer module (boolean), Disabling it will result 0 delta time in love.update
  t.modules.touch = false              -- Enable the touch module (boolean)
  t.modules.video = false              -- Enable the video module (boolean)
  t.modules.window = true             -- Enable the window module (boolean)
  t.modules.thread = false
end