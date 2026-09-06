import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the retry strategy to be used.
enum RetryType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueFixed("Fixed");

  const RetryType(this.wireValue);
  @override
  final String wireValue;

  static RetryType fromValue(String value) {
    for (final item in RetryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetryType value: $value');
  }
}
