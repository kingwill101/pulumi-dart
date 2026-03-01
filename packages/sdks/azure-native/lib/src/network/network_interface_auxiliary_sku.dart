/// Auxiliary sku of Network Interface resource.
enum NetworkInterfaceAuxiliarySku {
  valueNone("None"),
  valueA1("A1"),
  valueA2("A2"),
  valueA4("A4"),
  valueA8("A8");

  const NetworkInterfaceAuxiliarySku(this.value);
  final String value;

  static NetworkInterfaceAuxiliarySku fromValue(String value) {
    for (final item in NetworkInterfaceAuxiliarySku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceAuxiliarySku value: $value');
  }
}

