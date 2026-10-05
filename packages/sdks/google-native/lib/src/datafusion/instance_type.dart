import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Instance type.
enum InstanceType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  basic("BASIC"),
  enterprise("ENTERPRISE"),
  developer("DEVELOPER");

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
