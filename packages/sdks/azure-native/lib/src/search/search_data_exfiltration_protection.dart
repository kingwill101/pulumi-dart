/// A specific data exfiltration scenario that is disabled for the service.
enum SearchDataExfiltrationProtection {
  blockAll("BlockAll");

  const SearchDataExfiltrationProtection(this.value);
  final String value;

  static SearchDataExfiltrationProtection fromValue(String value) {
    for (final item in SearchDataExfiltrationProtection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SearchDataExfiltrationProtection value: $value');
  }
}

