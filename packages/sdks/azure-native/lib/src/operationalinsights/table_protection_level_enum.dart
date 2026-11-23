import 'package:pulumi/pulumi.dart' as pulumi;

/// The protection level of the table. Determines the default data access isolation behavior.
enum TableProtectionLevelEnum implements pulumi.PulumiEnum<String> {
  general("General"),
  protected("Protected");

  const TableProtectionLevelEnum(this.wireValue);
  @override
  final String wireValue;

  static TableProtectionLevelEnum fromValue(String value) {
    for (final item in TableProtectionLevelEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TableProtectionLevelEnum value: $value');
  }
}
