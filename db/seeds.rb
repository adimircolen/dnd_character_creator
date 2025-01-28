# Raças
Race.create(name: 'Elfo', description: 'Ágil e elegante, vive em florestas.', bonuses: { dexterity: 2, intelligence: 1 })
Race.create(name: 'Anão', description: 'Resistente e teimoso, vive em montanhas.', bonuses: { constitution: 2, wisdom: 1 })

# Classes
GameClass.create(name: 'Guerreiro', description: 'Um mestre em combate físico.', features: { armor_proficiency: 'Heavy', weapon_proficiency: 'All' })
GameClass.create(name: 'Mago', description: 'Usuário de magia arcana.', features: { spell_slots: 4, spell_save_dc: 8 })

# Backgrounds
Background.create(name: 'Nobre', description: 'Cresceu em riqueza e poder.', traits: { skill_proficiencies: [ 'Persuasion', 'History' ], gold: 25 })
Background.create(name: 'Forasteiro', description: 'Veio de terras distantes.', traits: { skill_proficiencies: [ 'Survival', 'Athletics' ], tool_proficiency: 'Herbalism Kit' })
