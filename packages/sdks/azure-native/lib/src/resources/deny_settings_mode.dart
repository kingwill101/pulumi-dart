import 'package:pulumi/pulumi.dart' as pulumi;

/// denySettings Mode that defines denied actions.
enum DenySettingsMode implements pulumi.PulumiEnum<String> {
  denyDelete("denyDelete"),
  denyWriteAndDelete("denyWriteAndDelete"),
  none("none");

  const DenySettingsMode(this.wireValue);
  @override
  final String wireValue;

  static DenySettingsMode fromValue(String value) {
    for (final item in DenySettingsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DenySettingsMode value: $value');
  }
}
