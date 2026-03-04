/// Specifies the Active Directory account type for Azure Storage.
enum AccountType {
  valueUser("User"),
  valueComputer("Computer");

  const AccountType(this.wireValue);
  final String wireValue;

  static AccountType fromValue(String value) {
    for (final item in AccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountType value: $value');
  }
}
