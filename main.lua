function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest", 1)
  love.graphics.setLineStyle("rough")
  
  --Load a new font and set it as the current one:
    fontSize = 16 * 2
    love.graphics.setFont(love.graphics.newFont("m5x7.ttf", fontSize))
  
  upscalingFactor = 6
  --screenWidth = love.graphics.getWidth() /(upscalingFactor *2) --desktopWidth /
  screenHeight =love.graphics.getHeight() /(upscalingFactor *2)--desktopHeight/
  screenWidth = screenHeight
    
  --Set windows size accordingly to upscalingFactor: 
    love.window.setMode(screenWidth * upscalingFactor,
                        screenHeight * upscalingFactor)
  
end
  local time = 0
  local paused = true
  local seconds = 0
  local minutes = 0
  local hours = 0
  local days = 0
  
function love.update(dt)
  if paused == false then
    time = time + dt
    
    seconds = seconds + dt
      if seconds >= 60 then
        seconds = seconds - 60 
        minutes = minutes + 1
      end
      if minutes >= 60 then
        minutes = minutes - 60
        hours = hours + 1
      end
      if hours >= 24 then
        hours = hours - 24
        days = days + 1
      end
  end
end

function love.draw()
  love.graphics.print("Crono Tomato", 10, 0)
  love.graphics.print(string.format("%.2f",time), 10, fontSize )
  love.graphics.print("Seconds. " .. string.format("%.2f",seconds),
    10, fontSize * 2)
  love.graphics.print("Minutes. " .. minutes, 10, fontSize * 3)
  love.graphics.print("Hours. " .. hours, 10, fontSize * 4)
  love.graphics.print("Days. " .. days, 10, fontSize * 5)
end

function love.keyreleased(key)
  if key == "p" then
    paused = not paused
  end
end