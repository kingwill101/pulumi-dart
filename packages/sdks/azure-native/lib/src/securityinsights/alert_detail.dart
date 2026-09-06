import 'package:pulumi/pulumi.dart' as pulumi;

/// Alert detail
enum AlertDetail implements pulumi.PulumiEnum<String> {
  valueDisplayName("DisplayName"),
  valueSeverity("Severity");

  const AlertDetail(this.wireValue);
  @override
  final String wireValue;

  static AlertDetail fromValue(String value) {
    for (final item in AlertDetail.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertDetail value: $value');
  }
}
