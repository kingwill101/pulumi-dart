import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the instance. Defaults to `PRODUCTION`.
enum InstanceType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  production("PRODUCTION"),
  development("DEVELOPMENT");

  const InstanceType(this.wireValue);
  @override
  final String wireValue;

  static InstanceType fromValue(String value) {
    for (final item in InstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceType value: $value');
  }
}
