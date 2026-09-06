import 'package:pulumi/pulumi.dart' as pulumi;

/// how to match value in the Uri
enum PathMatchType implements pulumi.PulumiEnum<String> {
  valuePrefix("prefix");

  const PathMatchType(this.wireValue);
  @override
  final String wireValue;

  static PathMatchType fromValue(String value) {
    for (final item in PathMatchType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PathMatchType value: $value');
  }
}
