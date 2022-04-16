function love.load()
  -- Window
  love.window.setTitle('square')
  windowWidth = 800
  windowHeight = 600
  love.window.setMode(windowWidth, windowHeight)

  -- Inverted square root of two
  INV_SQRT_TWO = 0.7071067811865475

  -- square
  square = {}
  square.size = 50
  square.x = (windowWidth / 2) - (square.size / 2)
  square.y = (windowHeight / 2) - (square.size / 2)
  square.dx = 0
  square.dy = 0
  square.speed = 350
end

function love.update(dt)
  -- square movement
  square.dx, square.dy = 0, 0
  if love.keyboard.isDown('w') then
    square.dy = -1
  end
  if love.keyboard.isDown('s') then
    square.dy = 1
  end
  if love.keyboard.isDown('a') then
    square.dx = -1
  end
  if love.keyboard.isDown('d') then
    square.dx = 1
  end
  if (math.abs(square.dx) + math.abs(square.dy) == 2) then
    square.dx = INV_SQRT_TWO * square.dx
    square.dy = INV_SQRT_TWO * square.dy
  end
  square.x = square.x + square.dx * square.speed * dt
  square.y = square.y + square.dy * square.speed * dt

end

function love.draw()
  -- square
  love.graphics.rectangle('fill', square.x, square.y, square.size, square.size)
end
