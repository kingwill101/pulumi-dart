import 'package:pulumi/pulumi.dart' as pulumi;

/// Things like URL, Email, Currency, Timestamp (rather than string, int64...)
enum EnterpriseCrmEventbusProtoAttributesDataType implements pulumi.PulumiEnum<String> {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  email("EMAIL"),
  url("URL"),
  currency("CURRENCY"),
  timestamp("TIMESTAMP"),
  domainName("DOMAIN_NAME");

  const EnterpriseCrmEventbusProtoAttributesDataType(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmEventbusProtoAttributesDataType fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoAttributesDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoAttributesDataType value: $value');
  }
}
