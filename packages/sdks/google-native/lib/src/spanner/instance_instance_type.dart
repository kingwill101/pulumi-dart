import 'package:pulumi/pulumi.dart' as pulumi;

/// The `InstanceType` of the current instance.
enum InstanceInstanceType implements pulumi.PulumiEnum<String> {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  provisioned("PROVISIONED"),
  freeInstance("FREE_INSTANCE");

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
