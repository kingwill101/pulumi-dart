/// The ingestion type.
enum IngestionType {
  valueIPFIX("IPFIX");

  const IngestionType(this.value);
  final String value;

  static IngestionType fromValue(String value) {
    for (final item in IngestionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngestionType value: $value');
  }
}

