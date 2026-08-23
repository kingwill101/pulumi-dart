/// Custom DNS record type.
enum CustomHostNameDnsRecordType {
  valueCName("CName"),
  valueA("A");

  const CustomHostNameDnsRecordType(this.wireValue);
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
