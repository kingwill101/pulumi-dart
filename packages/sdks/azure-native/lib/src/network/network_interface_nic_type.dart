/// Type of Network Interface resource.
enum NetworkInterfaceNicType {
  valueStandard("Standard"),
  valueElastic("Elastic");

  const NetworkInterfaceNicType(this.wireValue);
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

