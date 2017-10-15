using System;
using System.Windows;
using System.Windows.Controls;

namespace KeiansBasicWPFApp
{
    /// <summary>
    /// Interaction logic for BasicOverdraftAccount.xaml
    /// </summary>
    public partial class BasicOverdraftAccount : Page
    {
        public OverdraftAccount exampleAccount;

        public BasicOverdraftAccount()
        {
            InitializeComponent();

            exampleAccount = new OverdraftAccount(balance: 1000m, overdraft: 300m);
            UpdateOnscreenText();
        }

        private void Deposit_Button_Click(object sender, RoutedEventArgs e)
        {
            decimal amount;
            if (Decimal.TryParse(DepositTextbox.Text, out amount))
            {
                exampleAccount.Deposit(amount);
            }
            UpdateOnscreenText();
        }

        private void Withdraw_Button_Click(object sender, RoutedEventArgs e)
        {
            decimal amount;
            if (Decimal.TryParse(WithdrawTextbox.Text, out amount))
            {
                exampleAccount.Withdraw(amount);
            }
            UpdateOnscreenText();
        }

        private void UpdateOnscreenText()
        {
            BalanceAmountLabel.Content = String.Format("{0:C2}",exampleAccount.Balance);
            OverdraftAmountLabel.Content = String.Format("{0:C2}",exampleAccount.Overdraft);
            DepositTextbox.Text = String.Empty;
            WithdrawTextbox.Text = String.Empty;
        }
    }
}
