
CSV Items/ItemTable.csv @ Things indexed by item.
	TABLE ItemTable Items/ItemTable.nmm
	TABLE ItemUsabilityTable Items/ItemUsabilityTable.nmm -0x4B
	TABLE ItemEffectTable Items/ItemEffectTable.nmm -0x4B
	TABLE PrepScreenUsabilityTable Items/ItemPrepScreenUsabilityTable.nmm -0x5B
	TABLE ItemTargetTable Items/ItemTargetTable.nmm -0x4B
	INLINE True
	WRITE_SEQUENTIALLY False
	MAX_ENTRIES 256

CSV Items/SpellAssociationTable.csv @ This is a list: Links item IDs to spell animations (among other things).
	TABLE SpellAssociationTable Items/SpellAssociationTable.nmm
	INLINE True
	WRITE_SEQUENTIALLY True
