import 'package:pulumi/pulumi.dart' as pulumi;

/// They inventory type.
enum InventoryType implements pulumi.PulumiEnum<String> {
  valueCloud("Cloud"),
  valueVirtualNetwork("VirtualNetwork"),
  valueVirtualMachineTemplate("VirtualMachineTemplate"),
  valueVirtualMachine("VirtualMachine");

  const InventoryType(this.wireValue);
  @override
  final String wireValue;

  static InventoryType fromValue(String value) {
    for (final item in InventoryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InventoryType value: $value');
  }
}
