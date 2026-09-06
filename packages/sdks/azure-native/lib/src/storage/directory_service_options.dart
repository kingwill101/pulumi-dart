import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the directory service used. Note that this enum may be extended in the future.
enum DirectoryServiceOptions implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueAADDS("AADDS"),
  valueAD("AD"),
  valueAADKERB("AADKERB");

  const DirectoryServiceOptions(this.wireValue);
  @override
  final String wireValue;

  static DirectoryServiceOptions fromValue(String value) {
    for (final item in DirectoryServiceOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DirectoryServiceOptions value: $value');
  }
}
