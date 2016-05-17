Vector2 = require 'Vector2' -- include 2d vector lib 

function onFinishCasting()
    local current = Vector2:new(getOwnerX(), getOwnerY())
    local to = (Vector2:new(getSpellToX(), getSpellToY()) - current):normalize()
    local range = to * 1000
    local trueCoords = current + range

    addProjectile(trueCoords.x, trueCoords.y)
end

function applyEffects()
end
