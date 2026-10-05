import 'package:pulumi/pulumi.dart' as pulumi;

/// The unit of measure for the target size.
enum InstanceGroupManagerTargetSizeUnit implements pulumi.PulumiEnum<String> {
  instance("INSTANCE"),
  vcpu("VCPU");

  const InstanceGroupManagerTargetSizeUnit(this.wireValue);
  @override
  final String wireValue;

  static InstanceGroupManagerTargetSizeUnit fromValue(String value) {
    for (final item in InstanceGroupManagerTargetSizeUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerTargetSizeUnit value: $value');
  }
}
