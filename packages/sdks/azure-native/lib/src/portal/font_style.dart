import 'package:pulumi/pulumi.dart' as pulumi;

/// Style of terminal font.
enum FontStyle implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueMonospace("Monospace"),
  valueCourier("Courier");

  const FontStyle(this.wireValue);
  @override
  final String wireValue;

  static FontStyle fromValue(String value) {
    for (final item in FontStyle.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FontStyle value: $value');
  }
}
