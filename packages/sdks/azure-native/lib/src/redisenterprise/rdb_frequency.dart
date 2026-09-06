import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the frequency at which a snapshot of the database is created.
enum RdbFrequency implements pulumi.PulumiEnum<String> {
  value1h("1h"),
  value6h("6h"),
  value12h("12h");

  const RdbFrequency(this.wireValue);
  @override
  final String wireValue;

  static RdbFrequency fromValue(String value) {
    for (final item in RdbFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RdbFrequency value: $value');
  }
}
