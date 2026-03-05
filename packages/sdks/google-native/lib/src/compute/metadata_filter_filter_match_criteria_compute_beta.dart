/// Specifies how individual filter label matches within the list of filterLabels and contributes toward the overall metadataFilter match. Supported values are: - MATCH_ANY: at least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: all filterLabels must have matching labels in the provided metadata.
enum MetadataFilterFilterMatchCriteriaComputeBeta {
  matchAll("MATCH_ALL"),
  matchAny("MATCH_ANY"),
  notSet("NOT_SET");

  const MetadataFilterFilterMatchCriteriaComputeBeta(this.wireValue);
  final String wireValue;

  static MetadataFilterFilterMatchCriteriaComputeBeta fromValue(String value) {
    for (final item in MetadataFilterFilterMatchCriteriaComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataFilterFilterMatchCriteriaComputeBeta value: $value');
  }
}

