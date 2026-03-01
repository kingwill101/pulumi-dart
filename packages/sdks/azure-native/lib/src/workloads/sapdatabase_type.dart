/// The database type.
enum SAPDatabaseType {
  hANA("HANA"),
  dB2("DB2");

  const SAPDatabaseType(this.value);
  final String value;

  static SAPDatabaseType fromValue(String value) {
    for (final item in SAPDatabaseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPDatabaseType value: $value');
  }
}

