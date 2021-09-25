# SimpleSpringModule
Spring Module written in Lua(U) to make scripting springs easier :)

## Why using Springs ? 

Springs are very useful in Roblox Development, 

They are useful if you are making a Car chassis, a Gun Framework or anything else requiring a certain level of physics

## How to use it 

This module was made to be easy to use : 

```lua 
local SpringModule = game.ReplicatedStorage.Data.SpringModule -- Creating Module Referene

local Spring = SpringModule.new(0.1, 0.1) -- Creating the Spring Object, Values here reprensents Dampling And Friction of the Spring, adjust them as your liking 

local SpringCF = CFrame.new() --// Using a CFrame to translate returned Vector3

--// In this example I am going to use a loop, but it can be used anywhere else 

game:GetService('RunService').RenderStepped:Connect(function(delta) -- Notice important use of DeltaTime later
  
  Spring:set_target(Vector3.new(...) --// Setting Target of Spring (Vector3) can be anything. 
  
  --[[ 
    Using DeltaTime could help if you want your physics to depend of Frame Rate, just add (Delta*60) to every V3 Axis 
    E.g. : Spring:set_target(Vector3.new(0, 15 * (Delta*60)))
  ]]
  
  
  local v0 = spring:update() --// Simply updating spring 
  
  SpringCF = CFrame.Angles(v0.Y, -v0.X, 0) --// This order can be swapped, once again by your liking.
  
  --// You now have your springed CFrame !

end)
``` 
