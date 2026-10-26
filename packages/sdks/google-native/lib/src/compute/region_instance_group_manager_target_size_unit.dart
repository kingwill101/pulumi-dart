import 'package:pulumi/pulumi.dart' as pulumi;

/// The unit of measure for the target size.
enum RegionInstanceGroupManagerTargetSizeUnit implements pulumi.PulumiEnum<String> {
  instance("INSTANCE"),
  vcpu("VCPU");

  const RegionInstanceGroupManagerTargetSizeUnit(this.wireValue);
  @override
  final String wireValue;

  static RegionInstanceGroupManagerTargetSizeUnit fromValue(String value) {
    for (final item in RegionInstanceGroupManagerTargetSizeUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionInstanceGroupManagerTargetSizeUnit value: $value');
  }
}
