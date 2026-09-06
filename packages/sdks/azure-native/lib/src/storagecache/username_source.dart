import 'package:pulumi/pulumi.dart' as pulumi;

/// This setting determines how the cache gets username and group names for clients.
enum UsernameSource implements pulumi.PulumiEnum<String> {
  valueAD("AD"),
  valueLDAP("LDAP"),
  valueFile("File"),
  valueNone("None");

  const UsernameSource(this.wireValue);
  @override
  final String wireValue;

  static UsernameSource fromValue(String value) {
    for (final item in UsernameSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsernameSource value: $value');
  }
}
