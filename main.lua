
local a1 = -1.2
local a2 = 0.8
local a3 = -1.2
local a4 = -0.3
local a5 = -0.4
local a6 = 0.7

local npoints = 100000

local sin = math.sin
local cos = math.cos
local M_PI = 3.14159
local x = {}
local y = {}
x[0] = 0
y[0] = 0

local X_OFF = 200
local Y_OFF = 200

function love.load()
    for i=1,npoints do
        x[i] = 10*a1+(x[i-1]+a2*sin(a3*y[i-1]+a4))*
            cos(2*M_PI/(13+10*a6))+y[i-1]*sin(2*M_PI/(13+10*a6));
        y[i] = 10*a5-(x[i-1]+a2*sin(a3*y[i-1]+a4))*
            sin(2*M_PI/(13+10*a6))+y[i-1]*cos(2*M_PI/(13+10*a6));
    end
end

function love.update(dt)

end

function love.draw()
    -- the X_OFF and Y_OFF just move it into view
    for i=1,npoints do
        love.graphics.points(x[i]+X_OFF,y[i]+Y_OFF)
    end
end

