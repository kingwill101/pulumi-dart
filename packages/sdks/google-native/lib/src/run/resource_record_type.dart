/// Resource record type. Example: `AAAA`.
enum ResourceRecordType {
  recordTypeUnspecified("RECORD_TYPE_UNSPECIFIED"),
  a("A"),
  aaaa("AAAA"),
  cname("CNAME");

  const ResourceRecordType(this.wireValue);
  final String wireValue;

  static ResourceRecordType fromValue(String value) {
    for (final item in ResourceRecordType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceRecordType value: $value');
  }
}

