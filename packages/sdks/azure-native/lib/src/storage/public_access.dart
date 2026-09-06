import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether data in the container may be accessed publicly and the level of access.
enum PublicAccess implements pulumi.PulumiEnum<String> {
  valueContainer("Container"),
  valueBlob("Blob"),
  valueNone("None");

  const PublicAccess(this.wireValue);
  @override
  final String wireValue;

  static PublicAccess fromValue(String value) {
    for (final item in PublicAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicAccess value: $value');
  }
}
