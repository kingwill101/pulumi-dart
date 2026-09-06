import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the peering.
enum Kind implements pulumi.PulumiEnum<String> {
  valueDirect("Direct"),
  valueExchange("Exchange");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
