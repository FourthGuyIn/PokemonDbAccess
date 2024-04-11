using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using PokemonDbAccess.Models;
using Type = PokemonDbAccess.Models.Type;

namespace PokemonDbAccess.Data;

public partial class PokeMonContext : DbContext
{
    public PokeMonContext()
    {
    }

    public PokeMonContext(DbContextOptions<PokeMonContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Ability> Abilities { get; set; }

    public virtual DbSet<Pokemon> Pokemons { get; set; }

    public virtual DbSet<Type> Types { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseNpgsql("Server=localhost;Port=5432;Database=PokeMon;User Id=postgres;Password=postgres;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Ability>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("ability_pkey");

            entity.ToTable("ability");

            entity.HasIndex(e => e.Name, "ability_name_key").IsUnique();

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name)
                .HasMaxLength(50)
                .HasColumnName("name");
        });

        modelBuilder.Entity<Pokemon>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("pokemon_pkey");

            entity.ToTable("pokemon");

            entity.HasIndex(e => e.Name, "pokemon_name_key").IsUnique();

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Ability1)
                .HasMaxLength(50)
                .HasColumnName("ability1");
            entity.Property(e => e.Ability2)
                .HasMaxLength(50)
                .HasColumnName("ability2");
            entity.Property(e => e.HiddenAbility)
                .HasMaxLength(50)
                .HasColumnName("hidden_ability");
            entity.Property(e => e.Name)
                .HasMaxLength(50)
                .HasColumnName("name");
            entity.Property(e => e.Type1)
                .HasMaxLength(20)
                .HasColumnName("type1");
            entity.Property(e => e.Type2)
                .HasMaxLength(20)
                .HasColumnName("type2");

            entity.HasMany(d => d.Abilities).WithMany(p => p.Pokemons)
                .UsingEntity<Dictionary<string, object>>(
                    "PokemonAbility",
                    r => r.HasOne<Ability>().WithMany()
                        .HasForeignKey("AbilityId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("pokemon_ability_ability_id_fkey"),
                    l => l.HasOne<Pokemon>().WithMany()
                        .HasForeignKey("PokemonId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("pokemon_ability_pokemon_id_fkey"),
                    j =>
                    {
                        j.HasKey("PokemonId", "AbilityId").HasName("pokemon_ability_pkey");
                        j.ToTable("pokemon_ability");
                        j.IndexerProperty<int>("PokemonId").HasColumnName("pokemon_id");
                        j.IndexerProperty<int>("AbilityId").HasColumnName("ability_id");
                    });

            entity.HasMany(d => d.Types).WithMany(p => p.Pokemons)
                .UsingEntity<Dictionary<string, object>>(
                    "PokemonType",
                    r => r.HasOne<Type>().WithMany()
                        .HasForeignKey("TypeId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("pokemon_type_type_id_fkey"),
                    l => l.HasOne<Pokemon>().WithMany()
                        .HasForeignKey("PokemonId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("pokemon_type_pokemon_id_fkey"),
                    j =>
                    {
                        j.HasKey("PokemonId", "TypeId").HasName("pokemon_type_pkey");
                        j.ToTable("pokemon_type");
                        j.IndexerProperty<int>("PokemonId").HasColumnName("pokemon_id");
                        j.IndexerProperty<int>("TypeId").HasColumnName("type_id");
                    });
        });

        modelBuilder.Entity<Type>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("type_pkey");

            entity.ToTable("type");

            entity.HasIndex(e => e.Name, "type_name_key").IsUnique();

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name)
                .HasMaxLength(20)
                .HasColumnName("name");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
