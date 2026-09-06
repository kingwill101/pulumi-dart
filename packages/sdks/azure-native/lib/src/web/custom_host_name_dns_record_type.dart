import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom DNS record type.
enum CustomHostNameDnsRecordType implements pulumi.PulumiEnum<String> {
  valueCName("CName"),
  valueA("A");

  const CustomHostNameDnsRecordType(this.wireValue);
  @override
  final String wireValue;

  static CustomHostNameDnsRecordType fromValue(String value) {
    for (final item in CustomHostNameDnsRecordType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomHostNameDnsRecordType value: $value');
  }
}
