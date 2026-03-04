/// They inventory type.
enum InventoryType {
  valueCloud("Cloud"),
  valueVirtualNetwork("VirtualNetwork"),
  valueVirtualMachineTemplate("VirtualMachineTemplate"),
  valueVirtualMachine("VirtualMachine");

  const InventoryType(this.wireValue);
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
