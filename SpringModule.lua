--[[
	Scripter: Mistiik (XRHTech)
]]--

local spring = {}

spring.__index = spring

function spring.new(damping, friction)
	local self = setmetatable({
		-- Hooks Constants
		k = damping or 0.3,
		f = friction or 0.5,
		
		-- Vectors
		
		position = Vector3.new(),
		velocity = Vector3.new(),
		target = Vector3.new()
		
	}, spring)
	
	return self
end

function spring:set_target(v3)
	self.target = v3
end

function spring:update()
	local d = self.target - self.position
	local force = d * self.k

	self.velocity = (self.velocity * (1-self.f)) + force;

	self.position += self.velocity

	return self.position
end

return spring
