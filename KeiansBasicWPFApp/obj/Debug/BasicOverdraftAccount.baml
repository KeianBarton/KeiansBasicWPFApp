   M S B A M L   `   `   `  ����L  HKeiansBasicWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:KeiansBasicWPFAppKeiansBasicWPFApp  5      -    'KeiansBasicWPFApp.BasicOverdraftAccount   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:KeiansBasicWPFApp     5        N� Title$%  Basic overdraft account example��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��0��6!   $	��300��6.   $��35��6:    �� Padding$ 5q�6F   ���#4E87D4._�5      �� $��Center=�6   
�������.��6B   Overdraft Account6U   5      �� 5   
   $��Balance:��6   $
��Left=�6#   $��40��6>   $��	10,10,0,0q�5      $��0��6#   $��1��63   $	��135��6@   �� 5   
   -   5         ��Name$ BalanceAmountLabel��5      $
��Left=�6,   $��40��6G   $��
155,10,0,0q�5      $��0��6$   $��1��64   $	��135��6A   �� 5   
   $��
Overdraft:��6   $
��Left=�6%   $��40��6@   $��	10,10,0,0q�5      $��0��6#   $��2��63   $	��135��6@   �� 5   
   -   5        $ OverdraftAmountLabel��5      $
��Left=�6.   $��40��6I   $��
155,10,0,0q�5       $��0��6$   $��2��64   $	��135��6A   �� 5!   
   -   5         ��Name$ DepositTextbox��5!      $
��Left=�6*   $��40��6E   $	��135��6Q   $��	10,10,0,0q�5"      $��0��6%   $��3��65    �� TextWrapping$
 Wrap=�5#      �� 5$   
   -   5         ��Name$ DepositButton��5$      $��Deposit��6(   $
��Left=�6:   $��40��6U   $��
155,10,0,0q�5%      $��3��6%   $	��Top=�62   $	��135��6J   6V   �� 5&   
   -   5        $ WithdrawTextbox��5&      $
��Left=�6+   $��40��6F   $	��135��6R   $��	10,10,0,0q�5'      $��0��6%   $��4��65   $
 Wrap=�5(      �� 5)   
   -   5        $ WithdrawButton��5)      $��Withdraw��6)   $
��Left=�6<   $��40��6W   $��
155,10,0,0q�5*      $��4��6%   $	��Top=�62   $	��135��6J   6V   5+      5,      