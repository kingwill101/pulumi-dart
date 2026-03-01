/// Specifies the Active Directory account type for Azure Storage.
enum AccountType {
  valueUser("User"),
  valueComputer("Computer");

  const AccountType(this.value);
  final String value;

  static AccountType fromValue(String value) {
    for (final item in AccountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountType value: $value');
  }
}

