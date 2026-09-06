import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines values for AccessRights.
enum AccessRights implements pulumi.PulumiEnum<String> {
  manage("Manage"),
  send("Send"),
  listen("Listen");

  const AccessRights(this.wireValue);
  @override
  final String wireValue;

  static AccessRights fromValue(String value) {
    for (final item in AccessRights.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRights value: $value');
  }
}
