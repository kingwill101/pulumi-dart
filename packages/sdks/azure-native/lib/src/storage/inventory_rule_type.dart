/// The valid value is Inventory
enum InventoryRuleType {
  valueInventory("Inventory");

  const InventoryRuleType(this.value);
  final String value;

  static InventoryRuleType fromValue(String value) {
    for (final item in InventoryRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InventoryRuleType value: $value');
  }
}

