import 'package:pulumi/pulumi.dart' as pulumi;

/// The event hub messages compression type
enum Compression implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueGZip("GZip");

  const Compression(this.wireValue);
  @override
  final String wireValue;

  static Compression fromValue(String value) {
    for (final item in Compression.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Compression value: $value');
  }
}
