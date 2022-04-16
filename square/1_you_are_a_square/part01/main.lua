function love.load()
  -- Window
  love.window.setTitle('square')
  windowWidth = 800
  windowHeight = 600
  love.window.setMode(windowWidth, windowHeight)

  -- square
  square = {}
  square.size = 25
  square.x = (windowWidth / 2) - (square.size / 2)
  square.y = (windowHeight / 2) - (square.size / 2)
end

function love.update(dt)
end

function love.draw()
  -- square
  love.graphics.rectangle('fill', square.x, square.y, square.size, square.size)
end
