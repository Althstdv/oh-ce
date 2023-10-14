local mouse = {
    defaults = {
        right = { 2 },
        left = { 1 },
        swap = { 3 },
    },
}

function mouse.is_down(id)
    -- touch pretends to be a mouse sometimes, so when touch is active we don't want this input scheme to interfere
    if #love.touch.getTouches() > 0 then
        return false
    end
    return love.mouse.isDown(id)
end

return mouse
