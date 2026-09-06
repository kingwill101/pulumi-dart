import 'package:pulumi/pulumi.dart' as pulumi;

/// The OS Type
enum OSType implements pulumi.PulumiEnum<String> {
  linux("Linux"),
  windows("Windows");

  const OSType(this.wireValue);
  @override
  final String wireValue;

  static OSType fromValue(String value) {
    for (final item in OSType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSType value: $value');
  }
}
