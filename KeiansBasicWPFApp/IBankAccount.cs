namespace KeiansBasicWPFApp
{
    public interface IBankAccount
    {
        bool Withdraw(decimal amt);

        bool Deposit(decimal amt);
    }
}