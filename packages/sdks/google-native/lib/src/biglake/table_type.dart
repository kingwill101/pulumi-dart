import 'package:pulumi/pulumi.dart' as pulumi;

/// The table type.
enum TableType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  hive("HIVE");

  const TableType(this.wireValue);
  @override
  final String wireValue;

  static TableType fromValue(String value) {
    for (final item in TableType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TableType value: $value');
  }
}
