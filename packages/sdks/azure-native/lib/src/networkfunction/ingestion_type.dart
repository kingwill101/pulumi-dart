/// The ingestion type.
enum IngestionType {
  valueIPFIX("IPFIX");

  const IngestionType(this.wireValue);
  final String wireValue;

  static IngestionType fromValue(String value) {
    for (final item in IngestionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngestionType value: $value');
  }
}

