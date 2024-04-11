using System;
using System.Collections.Generic;

namespace PokemonDbAccess.Models;

public partial class Pokemon
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Type1 { get; set; } = null!;

    public string? Type2 { get; set; }

    public string Ability1 { get; set; } = null!;

    public string? Ability2 { get; set; }

    public string? HiddenAbility { get; set; }

    public virtual ICollection<Ability> Abilities { get; set; } = new List<Ability>();

    public virtual ICollection<Type> Types { get; set; } = new List<Type>();
}
