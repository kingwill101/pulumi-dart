import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag to show if Cross Region Restore is enabled on the Vault or not
enum CrossRegionRestore implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const CrossRegionRestore(this.wireValue);
  @override
  final String wireValue;

  static CrossRegionRestore fromValue(String value) {
    for (final item in CrossRegionRestore.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossRegionRestore value: $value');
  }
}
