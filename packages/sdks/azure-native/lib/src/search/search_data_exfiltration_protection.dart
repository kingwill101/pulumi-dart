import 'package:pulumi/pulumi.dart' as pulumi;

/// A specific data exfiltration scenario that is disabled for the service.
enum SearchDataExfiltrationProtection implements pulumi.PulumiEnum<String> {
  blockAll("BlockAll");

  const SearchDataExfiltrationProtection(this.wireValue);
  @override
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
