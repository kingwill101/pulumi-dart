import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of the instance. Specified at creation time.
enum InstanceInstanceType implements pulumi.PulumiEnum<String> {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  readPool("READ_POOL"),
  secondary("SECONDARY");

  const InstanceInstanceType(this.wireValue);
  @override
  final String wireValue;

  static InstanceInstanceType fromValue(String value) {
    for (final item in InstanceInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType value: $value');
  }
}
