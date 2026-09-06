import 'package:pulumi/pulumi.dart' as pulumi;

/// Vm extension setup order.
enum VmssExtensionSetupOrder implements pulumi.PulumiEnum<String> {
  valueBeforeSFRuntime("BeforeSFRuntime");

  const VmssExtensionSetupOrder(this.wireValue);
  @override
  final String wireValue;

  static VmssExtensionSetupOrder fromValue(String value) {
    for (final item in VmssExtensionSetupOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmssExtensionSetupOrder value: $value');
  }
}
