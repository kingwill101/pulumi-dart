import 'package:pulumi/pulumi.dart' as pulumi;

/// how to match header value
enum HeaderMatchType implements pulumi.PulumiEnum<String> {
  valueExact("exact");

  const HeaderMatchType(this.wireValue);
  @override
  final String wireValue;

  static HeaderMatchType fromValue(String value) {
    for (final item in HeaderMatchType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderMatchType value: $value');
  }
}
