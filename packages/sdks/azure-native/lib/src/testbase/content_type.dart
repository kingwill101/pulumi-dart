import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of command content.
enum ContentType implements pulumi.PulumiEnum<String> {
  valueInline("Inline"),
  valueFile("File"),
  valuePath("Path");

  const ContentType(this.wireValue);
  @override
  final String wireValue;

  static ContentType fromValue(String value) {
    for (final item in ContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentType value: $value');
  }
}
