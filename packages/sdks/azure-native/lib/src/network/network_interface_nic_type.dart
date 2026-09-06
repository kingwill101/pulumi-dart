import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Network Interface resource.
enum NetworkInterfaceNicType implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueElastic("Elastic");

  const NetworkInterfaceNicType(this.wireValue);
  @override
  final String wireValue;

  static NetworkInterfaceNicType fromValue(String value) {
    for (final item in NetworkInterfaceNicType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceNicType value: $value');
  }
}
