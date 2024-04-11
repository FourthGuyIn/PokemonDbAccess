using PokemonDbAccess.Data;
using System.Collections.ObjectModel;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    public partial class MainWindow : Window
    {
        public ObservableCollection<string> PokemonNames { get; set; }

        public MainWindow()
        {
            InitializeComponent();

            PokemonNames = new ObservableCollection<string>();

            using (var context = new PokeMonContext())
            {
                // Query
                var pokemons = context.Pokemons.ToList();
                foreach (var pokemon in pokemons)
                {
                    PokemonNames.Add(pokemon.Name);
                }
            }

            listBox.ItemsSource = PokemonNames;
        }

        private void listBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            MessageBox.Show($"You selected: {listBox.SelectedItem}");
        }
    }
}