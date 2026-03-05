/// The sourceType of the watchlist
enum SourceType {
  valueLocal("Local"),
  valueAzureStorage("AzureStorage");

  const SourceType(this.wireValue);
  final String wireValue;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}

