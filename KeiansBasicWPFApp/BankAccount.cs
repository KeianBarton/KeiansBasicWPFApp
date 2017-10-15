namespace KeiansBasicWPFApp
{
    public abstract class BankAccount : IBankAccount
    {
        protected decimal balance;

        public const string INSUFFICIENT_FUNDS = "Insufficient funds";

        public decimal Balance
        {
            get
            {
                return balance;
            }
        }

        public BankAccount(decimal balance = 0m)
        {
            this.balance = balance;
        }

        public abstract bool Withdraw(decimal amt);

        public abstract bool Deposit(decimal amt);

        protected abstract void ChangeAccountBalance(decimal amt);

    }
}
