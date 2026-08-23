/// A specific data exfiltration scenario that is disabled for the service.
enum SearchDataExfiltrationProtection {
  blockAll("BlockAll");

  const SearchDataExfiltrationProtection(this.wireValue);
  final String wireValue;

  static SearchDataExfiltrationProtection fromValue(String value) {
    for (final item in SearchDataExfiltrationProtection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SearchDataExfiltrationProtection value: $value');
  }
}
