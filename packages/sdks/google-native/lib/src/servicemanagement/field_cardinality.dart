/// The field cardinality.
enum FieldCardinality {
  cardinalityUnknown("CARDINALITY_UNKNOWN"),
  cardinalityOptional("CARDINALITY_OPTIONAL"),
  cardinalityRequired("CARDINALITY_REQUIRED"),
  cardinalityRepeated("CARDINALITY_REPEATED");

  const FieldCardinality(this.wireValue);
  final String wireValue;

  static FieldCardinality fromValue(String value) {
    for (final item in FieldCardinality.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldCardinality value: $value');
  }
}
