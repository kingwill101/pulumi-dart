/// Possible origins of inbound traffic that can bypass the rules defined in the 'ipRules' section.
enum SearchBypass {
  none("None"),
  azureServices("AzureServices");

  const SearchBypass(this.wireValue);
  final String wireValue;

  static SearchBypass fromValue(String value) {
    for (final item in SearchBypass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SearchBypass value: $value');
  }
}
