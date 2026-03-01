/// Ingestion source type.
enum SourceType {
  valueResource("Resource");

  const SourceType(this.value);
  final String value;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}

