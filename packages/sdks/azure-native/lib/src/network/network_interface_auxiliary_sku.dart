import 'package:pulumi/pulumi.dart' as pulumi;

/// Auxiliary sku of Network Interface resource.
enum NetworkInterfaceAuxiliarySku implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueA1("A1"),
  valueA2("A2"),
  valueA4("A4"),
  valueA8("A8");

  const NetworkInterfaceAuxiliarySku(this.wireValue);
  @override
  final String wireValue;

  static NetworkInterfaceAuxiliarySku fromValue(String value) {
    for (final item in NetworkInterfaceAuxiliarySku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceAuxiliarySku value: $value');
  }
}
