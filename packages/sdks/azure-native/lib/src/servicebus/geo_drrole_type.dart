import 'package:pulumi/pulumi.dart' as pulumi;

/// GeoDR Role Types
enum GeoDRRoleType implements pulumi.PulumiEnum<String> {
  primary("Primary"),
  secondary("Secondary");

  const GeoDRRoleType(this.wireValue);
  @override
  final String wireValue;

  static GeoDRRoleType fromValue(String value) {
    for (final item in GeoDRRoleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeoDRRoleType value: $value');
  }
}
