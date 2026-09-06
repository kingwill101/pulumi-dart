import 'package:pulumi/pulumi.dart' as pulumi;

/// The type for the IpAllocation.
enum IpAllocationType implements pulumi.PulumiEnum<String> {
  valueUndefined("Undefined"),
  valueHypernet("Hypernet");

  const IpAllocationType(this.wireValue);
  @override
  final String wireValue;

  static IpAllocationType fromValue(String value) {
    for (final item in IpAllocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationType value: $value');
  }
}
