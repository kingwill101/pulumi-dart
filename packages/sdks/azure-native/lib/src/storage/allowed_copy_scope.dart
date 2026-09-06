import 'package:pulumi/pulumi.dart' as pulumi;

/// Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet.
enum AllowedCopyScope implements pulumi.PulumiEnum<String> {
  valuePrivateLink("PrivateLink"),
  valueAAD("AAD");

  const AllowedCopyScope(this.wireValue);
  @override
  final String wireValue;

  static AllowedCopyScope fromValue(String value) {
    for (final item in AllowedCopyScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedCopyScope value: $value');
  }
}
