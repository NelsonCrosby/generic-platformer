--[[ A simple sc-sprites previewer using love2d.

This software is designed to be run from the parent directory, like:
  love animator player.idle.left

Views the item given by the second CLI argument (see `player.idle.left` above).
Produces an error if the argument is not given.

To work, this requires the Love 2D engine, sc-sprites, and a Class Commons
implementation.

This file is released to the public domain (see The Unlicense below). This file
does not release anything apart from this file to the public domain. That is to
say - any works alongside this file are _not_ public domain (unless, of course,
they explicitly dedicate themselves).


THE UNLICENSE
=============

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org>
]]

require 'class'
local scspr = require 'sc-sprites'

local new = common.instance
local sheet, usage

function love.load (args)
  local parser = new(scspr.Parser, 'nearest')
  sheet = parser:newSheet('../sprites.scspr')

  local sprite = scspr._utils.deepget(sheet.sprites, args[2])
  usage = sheet:useSprite(sprite, 100, 100)

  love.graphics.setBackgroundColor(128, 128, 128)
end

function love.update (dt)
  sheet:usageAnimate(usage, dt)
end

function love.draw ()
  love.graphics.draw(sheet.batch)
end
