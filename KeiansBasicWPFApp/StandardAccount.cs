using System;
using System.Threading.Tasks;

namespace KeiansBasicWPFApp
{
    public sealed class StandardAccount : BankAccount
    {
        private readonly Object lockObject = new Object();

        public override bool Deposit(decimal amt)
        {
            try
            {
                if (amt < 0m)
                    throw new InvalidOperationException();

                lock (lockObject)
                {
                    ChangeAccountBalance(amt);
                }

                return true;
            }
            catch (Exception)
            {
                // Advanced error handling could be implemented here
                return false;
            }
        }

        public override bool Withdraw(decimal amt)
        {
            try
            {
                if (amt < 0m)
                    throw new InvalidOperationException();

                if (balance - amt >= 0m)
                {
                    lock (lockObject)
                    {
                        ChangeAccountBalance(-amt);
                    }
                }
                else
                    throw new Exception(INSUFFICIENT_FUNDS);

                return true;
            }
            catch (Exception)
            {
                // Advanced error handling could be implemented here
                return false;
            }
        }

        protected override async void ChangeAccountBalance(decimal amt)
        {
            await Task.Run(() => ChangeBalance(amt));
        }

        private void ChangeBalance(decimal amt)
        {
            balance += amt;
        }
    }
}
