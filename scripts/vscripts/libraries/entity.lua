function CDOTA_BaseNPC:ClearInventory()
	local item_count = self:GetNumItemsInInventory()
	for i=0, item_count do
		local item = self:GetItemInSlot(i)
		self:RemoveItem(item)
	end
end

function CDOTA_BaseNPC:RemoveDesol2()
	local item = self:FindItemInInventory("item_disable_repair_2")
	self:RemoveItem(item)
end

function CDOTA_BaseNPC:GetCollisionSize()
	if GetUnitKV(self:GetUnitName()) then
		return GetUnitKV(self:GetUnitName(),"CollisionSize")
	end
	return nil
end

function CDOTA_BaseNPC:ClearInventoryCM()
	local item_count = self:GetNumItemsInInventory()
	local blink = self:FindItemInInventory("item_blink_datadriven")
	local root = self:FindItemInInventory("item_root_ability")
    local silence = self:FindItemInInventory("item_silence_ability")
    local glyph = self:FindItemInInventory("item_glyph_ability")
	for i=0, item_count do
		local item = self:GetItemInSlot(i)
		if blink ~= item and root ~= item and silence ~= item and glyph ~= item then
			self:RemoveItem(item)
		end
	end
end

function CDOTA_BaseNPC:ClearInventoryFull()
	for i=0, 5 do
		local item = self:GetItemInSlot(i)
		if item ~= nil then
			self:RemoveItem(item)
		end
	end
end

function CDOTA_BaseNPC:DropStash()
	for i=6, 9 do
		local item = self:GetItemInSlot(i)
		if item ~= nil then
        	self:RemoveItem(item)
		end
	end
end

