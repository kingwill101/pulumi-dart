import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Active Directory account type for Azure Storage.
enum AccountType implements pulumi.PulumiEnum<String> {
  valueUser("User"),
  valueComputer("Computer");

  const AccountType(this.wireValue);
  @override
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
