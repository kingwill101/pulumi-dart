/// Vm extension setup order.
enum VmssExtensionSetupOrder {
  valueBeforeSFRuntime("BeforeSFRuntime");

  const VmssExtensionSetupOrder(this.wireValue);
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
