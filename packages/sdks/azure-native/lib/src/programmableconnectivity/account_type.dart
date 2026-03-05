/// Type of the account the user has with the Operator's Network API infrastructure. AzureManaged | UserManaged.
enum AccountType {
  azureManaged("AzureManaged"),
  userManaged("UserManaged");

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

