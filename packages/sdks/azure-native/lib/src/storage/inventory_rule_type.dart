/// The valid value is Inventory
enum InventoryRuleType {
  valueInventory("Inventory");

  const InventoryRuleType(this.wireValue);
  final String wireValue;

  static InventoryRuleType fromValue(String value) {
    for (final item in InventoryRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InventoryRuleType value: $value');
  }
}

