modifier_antiblock = class({})

function modifier_antiblock:CheckState() 
    return { [MODIFIER_STATE_BLOCK_DISABLED] = false}
end

function modifier_antiblock:IsHidden()
    return false
end

function modifier_antiblock:IsPurgable()
    return false
end

function modifier_antiblock:DeclareFunctions()
	return { MODIFIER_PROPERTY_INCOMING_DAMAGE_PERCENTAGE,
             MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BONUS,
             MODIFIER_PROPERTY_STATUS_RESISTANCE_STACKING }
end

function modifier_antiblock:GetModifierIncomingDamage_Percentage()


	-- still implement the cap unlike vanilla
	return -1
end

function modifier_antiblock:GetModifierMagicalResistanceBonus()


	-- still implement the cap unlike vanilla
	return 1
end

function modifier_antiblock:GetModifierStatusResistanceStacking()

	-- still implement the cap unlike vanilla
	return 1
end