import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to include or exclude the enums matching the regex.
enum EnterpriseCrmEventbusStatsDimensionsEnumFilterType implements pulumi.PulumiEnum<String> {
  defaultInclusive("DEFAULT_INCLUSIVE"),
  exclusive("EXCLUSIVE");

  const EnterpriseCrmEventbusStatsDimensionsEnumFilterType(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmEventbusStatsDimensionsEnumFilterType fromValue(String value) {
    for (final item in EnterpriseCrmEventbusStatsDimensionsEnumFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusStatsDimensionsEnumFilterType value: $value');
  }
}
