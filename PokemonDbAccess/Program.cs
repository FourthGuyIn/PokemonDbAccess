using Npgsql;
using PokemonDbAccess.Data;
using System.Data;
using System.Linq;

namespace PokemonDbAccess
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var context = new PokeMonContext())
            {
                // First query
                Console.WriteLine("List of Pokemon:\n");
                var pokemons = context.Pokemons.ToList();
                foreach (var pokemon in pokemons)
                {
                    Console.WriteLine($"- {pokemon.Name}");
                }
                Console.WriteLine(new string('-', 40)); 

                // Second query
                Console.WriteLine("\nPokemon with water type:\n");
                var waterPokemons = context.Pokemons.Where(p => p.Type1 == "Water").ToList();
                foreach (var pokemon in waterPokemons)
                {
                    Console.WriteLine($"- {pokemon.Name}");
                }
                Console.WriteLine(new string('-', 40));

                // Third query
                Console.WriteLine("\nPokemon Abilities:\n");
                var pokemonAbilities = context.Abilities.ToList();
                foreach (var ability in pokemonAbilities)
                {
                    Console.WriteLine($"- {ability.Name}");
                }
                Console.WriteLine(new string('-', 40));
            }
        }
    }
}