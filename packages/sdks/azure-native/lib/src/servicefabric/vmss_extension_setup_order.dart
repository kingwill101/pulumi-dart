/// Vm extension setup order.
enum VmssExtensionSetupOrder {
  valueBeforeSFRuntime("BeforeSFRuntime");

  const VmssExtensionSetupOrder(this.value);
  final String value;

  static VmssExtensionSetupOrder fromValue(String value) {
    for (final item in VmssExtensionSetupOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmssExtensionSetupOrder value: $value');
  }
}

