LinkLuaModifier("modifier_lava_damage_2","lavadmgg.lua", LUA_MODIFIER_MOTION_NONE)
function StartTouchDamage( trigger )
    local ent = trigger.activator

    ent:AddNewModifier(ent, self, "modifier_lava_damage_2", {})
end

function EndTouch( trigger )
    local ent = trigger.activator
    ent:RemoveModifierByName("modifier_lava_damage_2")
end

-----------------------------------------------------------------------------------------

modifier_lava_damage_2 = modifier_lava_damage_2 or class({})

function modifier_lava_damage_2:IsHidden()
    return true
end

function modifier_lava_damage_2:IsPassive()
    return false
end

function modifier_lava_damage_2:IsPurgable()
    return false
end

function modifier_lava_damage_2:OnCreated()
    if not IsServer() then return end
    self:StartIntervalThink( 0.08 )
end

function modifier_lava_damage_2:OnIntervalThink()
    if IsServer() then
        local damage_table = {
            victim = self:GetParent(),
            attacker = self:GetParent(),
            ability = self,
            damage = 100,
            damage_type = DAMAGE_TYPE_PURE
        }
        ApplyDamage(damage_table)
    end
end