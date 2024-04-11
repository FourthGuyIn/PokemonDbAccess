﻿using System;
using System.Collections.Generic;

namespace PokemonDbAccess.Models;

public partial class Ability
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Pokemon> Pokemons { get; set; } = new List<Pokemon>();
}
