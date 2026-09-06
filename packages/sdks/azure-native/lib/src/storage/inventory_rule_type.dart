import 'package:pulumi/pulumi.dart' as pulumi;

/// The valid value is Inventory
enum InventoryRuleType implements pulumi.PulumiEnum<String> {
  valueInventory("Inventory");

  const InventoryRuleType(this.wireValue);
  @override
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
