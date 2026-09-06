import 'package:pulumi/pulumi.dart' as pulumi;

/// Size of terminal font.
enum FontSize implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const FontSize(this.wireValue);
  @override
  final String wireValue;

  static FontSize fromValue(String value) {
    for (final item in FontSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FontSize value: $value');
  }
}
