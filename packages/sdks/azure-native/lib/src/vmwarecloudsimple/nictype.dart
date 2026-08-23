/// NIC type
enum NICType {
  valueE1000("E1000"),
  valueE1000E("E1000E"),
  valuePCNET32("PCNET32"),
  valueVMXNET("VMXNET"),
  valueVMXNET2("VMXNET2"),
  valueVMXNET3("VMXNET3");

  const NICType(this.wireValue);
  final String wireValue;

  static NICType fromValue(String value) {
    for (final item in NICType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NICType value: $value');
  }
}
