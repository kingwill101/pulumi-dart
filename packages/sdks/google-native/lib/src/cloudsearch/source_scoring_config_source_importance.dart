/// Importance of the source.
enum SourceScoringConfigSourceImportance {
  default_("DEFAULT"),
  low("LOW"),
  high("HIGH");

  const SourceScoringConfigSourceImportance(this.wireValue);
  final String wireValue;

  static SourceScoringConfigSourceImportance fromValue(String value) {
    for (final item in SourceScoringConfigSourceImportance.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceScoringConfigSourceImportance value: $value');
  }
}

