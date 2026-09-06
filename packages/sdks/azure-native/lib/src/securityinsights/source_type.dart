import 'package:pulumi/pulumi.dart' as pulumi;

/// The sourceType of the watchlist
enum SourceType implements pulumi.PulumiEnum<String> {
  valueLocal("Local"),
  valueAzureStorage("AzureStorage");

  const SourceType(this.wireValue);
  @override
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
