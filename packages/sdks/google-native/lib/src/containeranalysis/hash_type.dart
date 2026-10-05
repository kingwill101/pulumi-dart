import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of hash that was performed.
enum HashType implements pulumi.PulumiEnum<String> {
  none("NONE"),
  sha256("SHA256");

  const HashType(this.wireValue);
  @override
  final String wireValue;

  static HashType fromValue(String value) {
    for (final item in HashType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HashType value: $value');
  }
}
