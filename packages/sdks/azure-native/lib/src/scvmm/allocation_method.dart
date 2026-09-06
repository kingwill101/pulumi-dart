import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the mac address type.
enum AllocationMethod implements pulumi.PulumiEnum<String> {
  valueDynamic("Dynamic"),
  valueStatic("Static");

  const AllocationMethod(this.wireValue);
  @override
  final String wireValue;

  static AllocationMethod fromValue(String value) {
    for (final item in AllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationMethod value: $value');
  }
}
