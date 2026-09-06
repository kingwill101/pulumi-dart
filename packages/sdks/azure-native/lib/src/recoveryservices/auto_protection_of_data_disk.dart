import 'package:pulumi/pulumi.dart' as pulumi;

/// A value indicating whether the disk auto protection is enabled.
enum AutoProtectionOfDataDisk implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const AutoProtectionOfDataDisk(this.wireValue);
  @override
  final String wireValue;

  static AutoProtectionOfDataDisk fromValue(String value) {
    for (final item in AutoProtectionOfDataDisk.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoProtectionOfDataDisk value: $value');
  }
}
