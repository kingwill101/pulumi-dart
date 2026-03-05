/// The database type.
enum SAPDatabaseType {
  hANA("HANA"),
  dB2("DB2");

  const SAPDatabaseType(this.wireValue);
  final String wireValue;

  static SAPDatabaseType fromValue(String value) {
    for (final item in SAPDatabaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPDatabaseType value: $value');
  }
}

