import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed instance side link role
enum LinkRole implements pulumi.PulumiEnum<String> {
  valuePrimary("Primary"),
  valueSecondary("Secondary");

  const LinkRole(this.wireValue);
  @override
  final String wireValue;

  static LinkRole fromValue(String value) {
    for (final item in LinkRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkRole value: $value');
  }
}
