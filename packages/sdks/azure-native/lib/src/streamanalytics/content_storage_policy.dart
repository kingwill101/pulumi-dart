import 'package:pulumi/pulumi.dart' as pulumi;

/// Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
enum ContentStoragePolicy implements pulumi.PulumiEnum<String> {
  valueSystemAccount("SystemAccount"),
  valueJobStorageAccount("JobStorageAccount");

  const ContentStoragePolicy(this.wireValue);
  @override
  final String wireValue;

  static ContentStoragePolicy fromValue(String value) {
    for (final item in ContentStoragePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentStoragePolicy value: $value');
  }
}
