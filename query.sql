CREATE TABLE Pokemon (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    type1 VARCHAR(20) NOT NULL,
    type2 VARCHAR(20),
    ability1 VARCHAR(50) NOT NULL,
    ability2 VARCHAR(50),
    hidden_ability VARCHAR(50)
);

CREATE TABLE Type (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE Ability (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Pokemon_Type (
    pokemon_id INTEGER REFERENCES Pokemon(id),
    type_id INTEGER REFERENCES Type(id),
    PRIMARY KEY (pokemon_id, type_id)
);

CREATE TABLE Pokemon_Ability (
    pokemon_id INTEGER REFERENCES Pokemon(id),
    ability_id INTEGER REFERENCES Ability(id),
    PRIMARY KEY (pokemon_id, ability_id)
);


-- Populate Types
INSERT INTO Type (name) VALUES 
('Normal'), ('Fire'), ('Water'), ('Electric'), ('Grass'), ('Ice'), ('Fighting'), ('Poison'), 
('Ground'), ('Flying'), ('Psychic'), ('Bug'), ('Rock'), ('Ghost'), ('Dragon'), ('Dark'), ('Steel'), ('Fairy');

-- Populate Abilities
INSERT INTO Ability (name) VALUES 
('Overgrow'), ('Blaze'), ('Torrent'), ('Swarm'), ('Intimidate'), ('Static'), ('Keen Eye'), ('Poison Point'), 
('Levitate'), ('Synchronize'), ('Chlorophyll'), ('Flash Fire'), ('Rock Head'), ('Sturdy'), ('Inner Focus'), 
('Clear Body'), ('Cute Charm'), ('Solar Power'), ('Rain Dish'), ('Sand Veil'), ('Run Away'), ('Hyper Cutter'), 
('Shell Armor'), ('Compound Eyes'), ('Shield Dust'), ('Natural Cure'), ('Damp'), ('Insomnia'), ('Guts'), 
('Lightning Rod'), ('Tinted Lens'), ('Sniper'), ('Unnerve'), ('Big Pecks');

-- Populate Pokemon
INSERT INTO Pokemon (name, type1, type2, ability1, ability2, hidden_ability) VALUES
('Bulbasaur', 'Grass', 'Poison', 'Overgrow', NULL, 'Chlorophyll'),
('Ivysaur', 'Grass', 'Poison', 'Overgrow', NULL, 'Chlorophyll'),
('Venusaur', 'Grass', 'Poison', 'Overgrow', NULL, 'Chlorophyll'),
('Charmander', 'Fire', NULL, 'Blaze', NULL, 'Solar Power'),
('Charmeleon', 'Fire', NULL, 'Blaze', NULL, 'Solar Power'),
('Charizard', 'Fire', 'Flying', 'Blaze', NULL, 'Solar Power'),
('Squirtle', 'Water', NULL, 'Torrent', NULL, 'Rain Dish'),
('Wartortle', 'Water', NULL, 'Torrent', NULL, 'Rain Dish'),
('Blastoise', 'Water', NULL, 'Torrent', NULL, 'Rain Dish'),
('Caterpie', 'Bug', NULL, 'Shield Dust', NULL, 'Run Away'),
('Metapod', 'Bug', NULL, 'Shed Skin', NULL, NULL),
('Butterfree', 'Bug', 'Flying', 'Compound Eyes', NULL, 'Tinted Lens'),
('Weedle', 'Bug', 'Poison', 'Shield Dust', NULL, 'Run Away'),
('Kakuna', 'Bug', 'Poison', 'Shed Skin', NULL, NULL),
('Beedrill', 'Bug', 'Poison', 'Swarm', NULL, 'Sniper'),
('Pidgey', 'Normal', 'Flying', 'Keen Eye', NULL, 'Big Pecks'),
('Pidgeotto', 'Normal', 'Flying', 'Keen Eye', NULL, 'Big Pecks'),
('Pidgeot', 'Normal', 'Flying', 'Keen Eye', NULL, 'Big Pecks'),
('Rattata', 'Normal', NULL, 'Run Away', NULL, 'Guts'),
('Raticate', 'Normal', NULL, 'Run Away', NULL, 'Guts'),
('Spearow', 'Normal', 'Flying', 'Keen Eye', NULL, 'Sniper'),
('Fearow', 'Normal', 'Flying', 'Keen Eye', NULL, 'Sniper'),
('Ekans', 'Poison', NULL, 'Intimidate', NULL, 'Unnerve'),
('Arbok', 'Poison', NULL, 'Intimidate', NULL, 'Unnerve'),
('Pikachu', 'Electric', NULL, 'Static', NULL, 'Lightning Rod'),
('Raichu', 'Electric', NULL, 'Static', NULL, 'Lightning Rod'),
('Sandshrew', 'Ground', NULL, 'Sand Veil', NULL, 'Sand Rush'),
('Sandslash', 'Ground', NULL, 'Sand Veil', NULL, 'Sand Rush'),
('Nidoran♀', 'Poison', NULL, 'Poison Point', 'Rivalry', 'Hustle'),
('Nidorina', 'Poison', NULL, 'Poison Point', 'Rivalry', 'Hustle'),
('Nidoqueen', 'Poison', 'Ground', 'Poison Point', 'Rivalry', 'Sheer Force'),
('Nidoran♂', 'Poison', NULL, 'Poison Point', 'Rivalry', 'Hustle'),
('Nidorino', 'Poison', NULL, 'Poison Point', 'Rivalry', 'Hustle'),
('Nidoking', 'Poison', 'Ground', 'Poison Point', 'Rivalry', 'Sheer Force'),
('Clefairy', 'Fairy', NULL, 'Cute Charm', 'Magic Guard', 'Friend Guard'),
('Clefable', 'Fairy', NULL, 'Cute Charm', 'Magic Guard', 'Unaware'),
('Vulpix', 'Fire', NULL, 'Flash Fire', NULL, 'Drought'),
('Ninetales', 'Fire', NULL, 'Flash Fire', NULL, 'Drought'),
('Jigglypuff', 'Normal', 'Fairy', 'Cute Charm', 'Competitive', 'Friend Guard'),
('Wigglytuff', 'Normal', 'Fairy', 'Cute Charm', 'Competitive', 'Frisk'),
('Zubat', 'Poison', 'Flying', 'Inner Focus', NULL, 'Infiltrator'),
('Golbat', 'Poison', 'Flying', 'Inner Focus', NULL, 'Infiltrator'),
('Oddish', 'Grass', 'Poison', 'Chlorophyll', NULL, 'Run Away'),
('Gloom', 'Grass', 'Poison', 'Chlorophyll', NULL, 'Stench'),
('Vileplume', 'Grass', 'Poison', 'Chlorophyll', NULL, 'Effect Spore'),
('Paras', 'Bug', 'Grass', 'Effect Spore', 'Dry Skin', 'Damp'),
('Parasect', 'Bug', 'Grass', 'Effect Spore', 'Dry Skin', 'Damp'),
('Venonat', 'Bug', 'Poison', 'Compound Eyes', 'Tinted Lens', 'Run Away'),
('Venomoth', 'Bug', 'Poison', 'Shield Dust', 'Tinted Lens', 'Wonder Skin'),
('Diglett', 'Ground', NULL, 'Sand Veil', 'Arena Trap', 'Sand Force'),
('Dugtrio', 'Ground', NULL, 'Sand Veil', 'Arena Trap', 'Sand Force'),
('Meowth', 'Normal', NULL, 'Pickup', 'Technician', 'Unnerve'),
('Persian', 'Normal', NULL, 'Limber', 'Technician', 'Unnerve'),
('Psyduck', 'Water', NULL, 'Damp', 'Cloud Nine', 'Swift Swim'),
('Golduck', 'Water', NULL, 'Damp', 'Cloud Nine', 'Swift Swim'),
('Mankey', 'Fighting', NULL, 'Vital Spirit', 'Anger Point', 'Defiant'),
('Primeape', 'Fighting', NULL, 'Vital Spirit', 'Anger Point', 'Defiant'),
('Growlithe', 'Fire', NULL, 'Intimidate', 'Flash Fire', 'Justified'),
('Arcanine', 'Fire', NULL, 'Intimidate', 'Flash Fire', 'Justified'),
('Poliwag', 'Water', NULL, 'Water Absorb', 'Damp', 'Swift Swim'),
('Poliwhirl', 'Water', NULL, 'Water Absorb', 'Damp', 'Swift Swim'),
('Poliwrath', 'Water', 'Fighting', 'Water Absorb', 'Damp', 'Swift Swim'),
('Abra', 'Psychic', NULL, 'Synchronize', 'Inner Focus', 'Magic Guard'),
('Kadabra', 'Psychic', NULL, 'Synchronize', 'Inner Focus', 'Magic Guard'),
('Alakazam', 'Psychic', NULL, 'Synchronize', 'Inner Focus', 'Magic Guard'),
('Machop', 'Fighting', NULL, 'Guts', 'No Guard', 'Steadfast'),
('Machoke', 'Fighting', NULL, 'Guts', 'No Guard', 'Steadfast'),
('Machamp', 'Fighting', NULL, 'Guts', 'No Guard', 'Steadfast'),
('Bellsprout', 'Grass', 'Poison', 'Chlorophyll', NULL, 'Gluttony'),
('Weepinbell', 'Grass', 'Poison', 'Chlorophyll', NULL, 'Gluttony'),
('Victreebel', 'Grass', 'Poison', 'Chlorophyll', NULL, 'Gluttony'),
('Tentacool', 'Water', 'Poison', 'Clear Body', 'Liquid Ooze', 'Rain Dish'),
('Tentacruel', 'Water', 'Poison', 'Clear Body', 'Liquid Ooze', 'Rain Dish'),
('Geodude', 'Rock', 'Ground', 'Rock Head', 'Sturdy', 'Sand Veil'),
('Graveler', 'Rock', 'Ground', 'Rock Head', 'Sturdy', 'Sand Veil'),
('Golem', 'Rock', 'Ground', 'Rock Head', 'Sturdy', 'Sand Veil'),
('Ponyta', 'Fire', NULL, 'Run Away', 'Flash Fire', 'Flame Body'),
('Rapidash', 'Fire', NULL, 'Run Away', 'Flash Fire', 'Flame Body'),
('Slowpoke', 'Water', 'Psychic', 'Oblivious', 'Own Tempo', 'Regenerator'),
('Slowbro', 'Water', 'Psychic', 'Oblivious', 'Own Tempo', 'Regenerator'),
('Magnemite', 'Electric', 'Steel', 'Magnet Pull', 'Sturdy', 'Analytic'),
('Magneton', 'Electric', 'Steel', 'Magnet Pull', 'Sturdy', 'Analytic')


-- Populate Pokemon_Type

-- Bulbasaur: Grass, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Bulbasaur'), (SELECT id FROM Type WHERE name = 'Grass')),
       ((SELECT id FROM Pokemon WHERE name = 'Bulbasaur'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Ivysaur: Grass, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Ivysaur'), (SELECT id FROM Type WHERE name = 'Grass')),
       ((SELECT id FROM Pokemon WHERE name = 'Ivysaur'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Venusaur: Grass, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Venusaur'), (SELECT id FROM Type WHERE name = 'Grass')),
       ((SELECT id FROM Pokemon WHERE name = 'Venusaur'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Charmander: Fire
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Charmander'), (SELECT id FROM Type WHERE name = 'Fire'));

-- Charmeleon: Fire
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Charmeleon'), (SELECT id FROM Type WHERE name = 'Fire'));

-- Charizard: Fire, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Charizard'), (SELECT id FROM Type WHERE name = 'Fire')),
       ((SELECT id FROM Pokemon WHERE name = 'Charizard'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Squirtle: Water
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Squirtle'), (SELECT id FROM Type WHERE name = 'Water'));

-- Wartortle: Water
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Wartortle'), (SELECT id FROM Type WHERE name = 'Water'));

-- Blastoise: Water
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Blastoise'), (SELECT id FROM Type WHERE name = 'Water'));

-- Caterpie: Bug
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Caterpie'), (SELECT id FROM Type WHERE name = 'Bug'));

-- Metapod: Bug
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Metapod'), (SELECT id FROM Type WHERE name = 'Bug'));

-- Butterfree: Bug, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Butterfree'), (SELECT id FROM Type WHERE name = 'Bug')),
       ((SELECT id FROM Pokemon WHERE name = 'Butterfree'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Weedle: Bug, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Weedle'), (SELECT id FROM Type WHERE name = 'Bug')),
       ((SELECT id FROM Pokemon WHERE name = 'Weedle'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Kakuna: Bug, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Kakuna'), (SELECT id FROM Type WHERE name = 'Bug')),
       ((SELECT id FROM Pokemon WHERE name = 'Kakuna'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Beedrill: Bug, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Beedrill'), (SELECT id FROM Type WHERE name = 'Bug')),
       ((SELECT id FROM Pokemon WHERE name = 'Beedrill'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Pidgey: Normal, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Pidgey'), (SELECT id FROM Type WHERE name = 'Normal')),
       ((SELECT id FROM Pokemon WHERE name = 'Pidgey'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Pidgeotto: Normal, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Pidgeotto'), (SELECT id FROM Type WHERE name = 'Normal')),
       ((SELECT id FROM Pokemon WHERE name = 'Pidgeotto'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Pidgeot: Normal, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Pidgeot'), (SELECT id FROM Type WHERE name = 'Normal')),
       ((SELECT id FROM Pokemon WHERE name = 'Pidgeot'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Rattata: Normal
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Rattata'), (SELECT id FROM Type WHERE name = 'Normal'));

-- Raticate: Normal
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Raticate'), (SELECT id FROM Type WHERE name = 'Normal'));

-- Spearow: Normal, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Spearow'), (SELECT id FROM Type WHERE name = 'Normal')),
       ((SELECT id FROM Pokemon WHERE name = 'Spearow'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Fearow: Normal, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Fearow'), (SELECT id FROM Type WHERE name = 'Normal')),
       ((SELECT id FROM Pokemon WHERE name = 'Fearow'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Ekans: Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Ekans'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Arbok: Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Arbok'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Pikachu: Electric
INSERT INTO Pokemon_Type (pokemon_id, type_id) 
VALUES ((SELECT id FROM Pokemon WHERE name = 'Pikachu'), (SELECT id FROM Type WHERE name = 'Electric'));


-- Rialto: Electric
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Raichu'), (SELECT id FROM Type WHERE name = 'Electric'));

-- Sandshrew: Ground
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Sandshrew'), (SELECT id FROM Type WHERE name = 'Ground'));

-- Sandslash: Ground
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Sandslash'), (SELECT id FROM Type WHERE name = 'Ground'));

-- Nidoran♀: Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Nidoran♀'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Nidorina: Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Nidorina'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Nidoqueen: Poison, Ground
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Nidoqueen'), (SELECT id FROM Type WHERE name = 'Poison')),
       ((SELECT id FROM Pokemon WHERE name = 'Nidoqueen'), (SELECT id FROM Type WHERE name = 'Ground'));

-- Nidoran♂: Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Nidoran♂'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Nidorino: Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Nidorino'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Nidoking: Poison, Ground
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Nidoking'), (SELECT id FROM Type WHERE name = 'Poison')),
       ((SELECT id FROM Pokemon WHERE name = 'Nidoking'), (SELECT id FROM Type WHERE name = 'Ground'));


-- Clefairy: Fairy
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Clefairy'), (SELECT id FROM Type WHERE name = 'Fairy'));

-- Clefable: Fairy
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Clefable'), (SELECT id FROM Type WHERE name = 'Fairy'));

-- Vulpix: Fire
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Vulpix'), (SELECT id FROM Type WHERE name = 'Fire'));

-- Ninetales: Fire
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Ninetales'), (SELECT id FROM Type WHERE name = 'Fire'));


-- Jigglypuff: Normal, Fairy
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Jigglypuff'), (SELECT id FROM Type WHERE name = 'Normal')),
       ((SELECT id FROM Pokemon WHERE name = 'Jigglypuff'), (SELECT id FROM Type WHERE name = 'Fairy'));

-- Wigglytuff: Normal, Fairy
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Wigglytuff'), (SELECT id FROM Type WHERE name = 'Normal')),
       ((SELECT id FROM Pokemon WHERE name = 'Wigglytuff'), (SELECT id FROM Type WHERE name = 'Fairy'));

-- Zubat: Poison, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Zubat'), (SELECT id FROM Type WHERE name = 'Poison')),
       ((SELECT id FROM Pokemon WHERE name = 'Zubat'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Golbat: Poison, Flying
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Golbat'), (SELECT id FROM Type WHERE name = 'Poison')),
       ((SELECT id FROM Pokemon WHERE name = 'Golbat'), (SELECT id FROM Type WHERE name = 'Flying'));

-- Oddish: Grass, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Oddish'), (SELECT id FROM Type WHERE name = 'Grass')),
       ((SELECT id FROM Pokemon WHERE name = 'Oddish'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Gloom: Grass, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Gloom'), (SELECT id FROM Type WHERE name = 'Grass')),
       ((SELECT id FROM Pokemon WHERE name = 'Gloom'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Vileplume: Grass, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Vileplume'), (SELECT id FROM Type WHERE name = 'Grass')),
       ((SELECT id FROM Pokemon WHERE name = 'Vileplume'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Paras: Bug, Grass
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Paras'), (SELECT id FROM Type WHERE name = 'Bug')),
       ((SELECT id FROM Pokemon WHERE name = 'Paras'), (SELECT id FROM Type WHERE name = 'Grass'));

-- Parasect: Bug, Grass
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Parasect'), (SELECT id FROM Type WHERE name = 'Bug')),
       ((SELECT id FROM Pokemon WHERE name = 'Parasect'), (SELECT id FROM Type WHERE name = 'Grass'));

-- Venonat: Bug, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Venonat'), (SELECT id FROM Type WHERE name = 'Bug')),
       ((SELECT id FROM Pokemon WHERE name = 'Venonat'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Venomoth: Bug, Poison
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Venomoth'), (SELECT id FROM Type WHERE name = 'Bug')),
       ((SELECT id FROM Pokemon WHERE name = 'Venomoth'), (SELECT id FROM Type WHERE name = 'Poison'));

-- Diglett: Ground
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Diglett'), (SELECT id FROM Type WHERE name = 'Ground'));

-- Dugtrio: Ground
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Dugtrio'), (SELECT id FROM Type WHERE name = 'Ground'));

-- Meowth: Normal
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Meowth'), (SELECT id FROM Type WHERE name = 'Normal'));

-- Persian: Normal
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Persian'), (SELECT id FROM Type WHERE name = 'Normal'));

-- Psyduck: Water
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Psyduck'), (SELECT id FROM Type WHERE name = 'Water'));

-- Golduck: Water
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Golduck'), (SELECT id FROM Type WHERE name = 'Water'));

-- Mankey: Fighting
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Mankey'), (SELECT id FROM Type WHERE name = 'Fighting'));

-- Primeape: Fighting
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Primeape'), (SELECT id FROM Type WHERE name = 'Fighting'));

-- Growlithe: Fire
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Growlithe'), (SELECT id FROM Type WHERE name = 'Fire'));

-- Arcanine: Fire
INSERT INTO Pokemon_Type (pokemon_id, type_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Arcanine'), (SELECT id FROM Type WHERE name = 'Fire'));


ALTER TABLE Ability
ADD COLUMN damage VARCHAR(50),
ADD COLUMN effects VARCHAR(200);


CREATE TABLE Pokemon_Ability_Effect (
    pokemon_id INTEGER REFERENCES Pokemon(id),
    ability_id INTEGER REFERENCES Ability(id),
    PRIMARY KEY (pokemon_id, ability_id)
);

-- update Pokemon_Ability with damage and effects

-- Overgrow
UPDATE Ability
SET effects = 'When HP is below 1/3rd its maximum, power of Grass-type moves is increased by 50%'
WHERE name = 'Overgrow';

-- Blaze
UPDATE Ability
SET effects = 'When HP is below 1/3rd its maximum, power of Fire-type moves is increased by 50%'
WHERE name = 'Blaze';

-- Torrent
UPDATE Ability
SET effects = 'When HP is below 1/3rd its maximum, power of Water-type moves is increased by 50%'
WHERE name = 'Torrent';

-- Swarm
UPDATE Ability
SET effects = 'When HP is below 1/3rd its maximum, power of Bug-type moves is increased by 50%'
WHERE name = 'Swarm';

-- Intimidate
UPDATE Ability
SET effects = 'Upon entering battle, the opponent’s Attack lowers by one stage'
WHERE name = 'Intimidate';

-- Static
UPDATE Ability
SET effects = '30% chance a Pokemon making contact with the user will be paralyzed'
WHERE name = 'Static';

-- Keen Eye
UPDATE Ability
SET effects = 'Prevents other Pokemon from lowering accuracy'
WHERE name = 'Keen Eye';

-- Poison Point
UPDATE Ability
SET effects = '30% chance a Pokemon making contact with the user will be poisoned'
WHERE name = 'Poison Point';

-- Levitate
UPDATE Ability
SET effects = 'Ground-type moves have no effect on Pokemon'
WHERE name = 'Levitate';

-- Synchronize
UPDATE Ability
SET effects = 'When Pokemon becomes poisoned, paralyzed, or burned, so does the opponent'
WHERE name = 'Synchronize';

-- Chlorophyll
UPDATE Ability
SET effects = 'Speed is doubled in sunny weather'
WHERE name = 'Chlorophyll';

-- Flash Fire
UPDATE Ability
SET effects = 'Fire-type moves are nullified and the Pokemon’s Fire-type moves are increased by 50%'
WHERE name = 'Flash Fire';

-- Rock Head
UPDATE Ability
SET effects = 'Prevents recoil damage'
WHERE name = 'Rock Head';

-- Sturdy
UPDATE Ability
SET effects = 'If Pokemon is at full HP, it survives one hit with at least 1 HP'
WHERE name = 'Sturdy';

-- Inner Focus
UPDATE Ability
SET effects = 'Prevents flinching'
WHERE name = 'Inner Focus';

-- Clear Body
UPDATE Ability
SET effects = 'Prevents other Pokemon from lowering stats'
WHERE name = 'Clear Body';

-- Cute Charm
UPDATE Ability
SET effects = '30% chance a Pokemon making contact with the user will be infatuated'
WHERE name = 'Cute Charm';

-- Solar Power
UPDATE Ability
SET effects = 'During sunny weather, the Pokemon’s Special Attack increases by 50% but loses HP every turn'
WHERE name = 'Solar Power';

-- Rain Dish
UPDATE Ability
SET effects = 'During rain, the Pokemon regains 1/16th of its maximum HP every turn'
WHERE name = 'Rain Dish';

-- Sand Veil
UPDATE Ability
SET effects = 'Increases evasion to 1.25x during a sandstorm'
WHERE name = 'Sand Veil';

-- Run Away
UPDATE Ability
SET effects = 'Guarantees escape from wild Pokemon'
WHERE name = 'Run Away';

-- Hyper Cutter
UPDATE Ability
SET effects = 'Prevents other Pokemon from lowering Attack'
WHERE name = 'Hyper Cutter';

-- Shell Armor
UPDATE Ability
SET effects = 'Prevents critical hits'
WHERE name = 'Shell Armor';

-- Compound Eyes
UPDATE Ability
SET effects = 'Increases accuracy by 30%'
WHERE name = 'Compound Eyes';

-- Shield Dust
UPDATE Ability
SET effects = 'Prevents added effects from moves'
WHERE name = 'Shield Dust';

-- Natural Cure
UPDATE Ability
SET effects = 'Upon switching out, the Pokemon is cured of any major status conditions'
WHERE name = 'Natural Cure';

-- Insomnia
UPDATE Ability
SET effects = 'Prevents sleep'
WHERE name = 'Insomnia';

-- Guts
UPDATE Ability
SET effects = 'Attack is increased by 50% when induced with a status (BURN, PARALYZE, SLEEP, POISON, FREEZE)'
WHERE name = 'Guts';

-- Lightning Rod
UPDATE Ability
SET effects = 'Electric-type moves are nullified and the Pokemon’s Special Attack is increased by 50%'
WHERE name = 'Lightning Rod';

-- Tinted Lens
UPDATE Ability
SET effects = 'Doubles damage on resisted hits'
WHERE name = 'Tinted Lens';

-- Sniper
UPDATE Ability
SET effects = 'Critical hits deal 2.25x damage instead of 2x'
WHERE name = 'Sniper';

-- Unnerve
UPDATE Ability
SET effects = 'Prevents opposing Pokemon from using their held Berries'
WHERE name = 'Unnerve';

-- Big Pecks
UPDATE Ability
SET effects = 'Prevents Defense from being lowered'
WHERE name = 'Big Pecks';

-- Pickup
UPDATE Ability
SET effects = 'Has a 10% chance of finding and holding an item after battle'
WHERE name = 'Pickup';

-- Technician
UPDATE Ability
SET effects = 'Powers up the Pokemon’s weaker moves'
WHERE name = 'Technician';

-- Limber
UPDATE Ability
SET effects = 'Prevents paralysis'
WHERE name = 'Limber';

-- Water Absorb
UPDATE Ability
SET effects = 'Restores HP if hit by a Water-type move'
WHERE name = 'Water Absorb';

-- Damp
UPDATE Ability
SET effects = 'Prevents self-destruction moves'
WHERE name = 'Damp';

-- Cloud Nine
UPDATE Ability
SET effects = 'Negates all effects of weather'
WHERE name = 'Cloud Nine';

-- Vital Spirit
UPDATE Ability
SET effects = 'Prevents sleep'
WHERE name = 'Vital Spirit';

-- Anger Point
UPDATE Ability
SET effects = 'Maxes Attack after taking a critical hit'
WHERE name = 'Anger Point';

-- Defiant
UPDATE Ability
SET effects = 'Attack is increased by two stages when stats are lowered'
WHERE name = 'Defiant';

-- Pokemon_Ability_Effect
-- Bulbasaur: Overgrow (Grass, Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Bulbasaur'), (SELECT id FROM Ability WHERE name = 'Overgrow'));

-- Ivysaur: Overgrow (Grass, Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Ivysaur'), (SELECT id FROM Ability WHERE name = 'Overgrow'));

-- Venusaur: Overgrow (Grass, Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Venusaur'), (SELECT id FROM Ability WHERE name = 'Overgrow'));

-- Charmander: Blaze (Fire)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Charmander'), (SELECT id FROM Ability WHERE name = 'Blaze'));

-- Charmeleon: Blaze (Fire)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Charmeleon'), (SELECT id FROM Ability WHERE name = 'Blaze'));

-- Charizard: Blaze (Fire, Flying)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Charizard'), (SELECT id FROM Ability WHERE name = 'Blaze'));

-- Squirtle: Torrent (Water)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Squirtle'), (SELECT id FROM Ability WHERE name = 'Torrent'));

-- Wartortle: Torrent (Water)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Wartortle'), (SELECT id FROM Ability WHERE name = 'Torrent'));

-- Blastoise: Torrent (Water)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Blastoise'), (SELECT id FROM Ability WHERE name = 'Torrent'));

-- Caterpie: Shield Dust (Bug)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Caterpie'), (SELECT id FROM Ability WHERE name = 'Shield Dust'));

-- Metapod: Shed Skin (Bug)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Metapod'), (SELECT id FROM Ability WHERE name = 'Shed Skin'));

-- Butterfree: Compound Eyes (Bug, Flying)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Butterfree'), (SELECT id FROM Ability WHERE name = 'Compound Eyes'));

-- Weedle: Shield Dust (Bug, Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Weedle'), (SELECT id FROM Ability WHERE name = 'Shield Dust'));

-- Kakuna: Shed Skin (Bug, Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Kakuna'), (SELECT id FROM Ability WHERE name = 'Shed Skin'));

-- Beedrill: Swarm (Bug, Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Beedrill'), (SELECT id FROM Ability WHERE name = 'Swarm'));

-- Pidgey: Keen Eye (Normal, Flying)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Pidgey'), (SELECT id FROM Ability WHERE name = 'Keen Eye'));

-- Pidgeotto: Keen Eye (Normal, Flying)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Pidgeotto'), (SELECT id FROM Ability WHERE name = 'Keen Eye'));

-- Pidgeot: Keen Eye (Normal, Flying)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Pidgeot'), (SELECT id FROM Ability WHERE name = 'Keen Eye'));

-- Rattata: Run Away (Normal)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Rattata'), (SELECT id FROM Ability WHERE name = 'Run Away'));

-- Raticate: Run Away (Normal)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Raticate'), (SELECT id FROM Ability WHERE name = 'Run Away'));

-- Spearow: Keen Eye (Normal, Flying)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Spearow'), (SELECT id FROM Ability WHERE name = 'Keen Eye'));

-- Fearow: Keen Eye (Normal, Flying)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Fearow'), (SELECT id FROM Ability WHERE name = 'Keen Eye'));

-- Ekans: Intimidate (Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Ekans'), (SELECT id FROM Ability WHERE name = 'Intimidate'));

-- Arbok: Intimidate (Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Arbok'), (SELECT id FROM Ability WHERE name = 'Intimidate'));

-- Pikachu: Static (Electric)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Pikachu'), (SELECT id FROM Ability WHERE name = 'Static'));

-- Rialto: Lightning Rod (Electric)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Raichu'), (SELECT id FROM Ability WHERE name = 'Lightning Rod'));


-- Sandshrew: Sand Veil (Ground)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Sandshrew'), (SELECT id FROM Ability WHERE name = 'Sand Veil'));

-- Sandslash: Sand Veil (Ground)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Sandslash'), (SELECT id FROM Ability WHERE name = 'Sand Veil'));

-- Nidoran♀: Poison Point (Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)
VALUES ((SELECT id FROM Pokemon WHERE name = 'Nidoran♀'), (SELECT id FROM Ability WHERE name = 'Poison Point'));

-- Nidorina: Poison Point (Poison)
INSERT INTO Pokemon_Ability_Effect (pokemon_id, ability_id)

VALUES ((SELECT id FROM Pokemon WHERE name = 'Nidorina'), (SELECT id FROM Ability WHERE name = 'Poison Point'));



