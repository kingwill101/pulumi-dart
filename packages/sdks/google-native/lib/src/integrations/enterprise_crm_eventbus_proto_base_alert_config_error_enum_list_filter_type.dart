import 'package:pulumi/pulumi.dart' as pulumi;

enum EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType implements pulumi.PulumiEnum<String> {
  defaultInclusive("DEFAULT_INCLUSIVE"),
  exclusive("EXCLUSIVE");

  const EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType value: $value');
  }
}
