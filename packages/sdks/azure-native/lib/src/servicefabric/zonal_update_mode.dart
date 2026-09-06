import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the update mode for Cross Az clusters.
enum ZonalUpdateMode implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueFast("Fast");

  const ZonalUpdateMode(this.wireValue);
  @override
  final String wireValue;

  static ZonalUpdateMode fromValue(String value) {
    for (final item in ZonalUpdateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZonalUpdateMode value: $value');
  }
}
