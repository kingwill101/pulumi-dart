/// Custom DNS record type.
enum CustomHostNameDnsRecordType {
  valueCName("CName"),
  valueA("A");

  const CustomHostNameDnsRecordType(this.value);
  final String value;

  static CustomHostNameDnsRecordType fromValue(String value) {
    for (final item in CustomHostNameDnsRecordType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomHostNameDnsRecordType value: $value');
  }
}

