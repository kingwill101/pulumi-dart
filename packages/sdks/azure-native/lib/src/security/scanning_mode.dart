import 'package:pulumi/pulumi.dart' as pulumi;

/// The scanning mode for the VM scan.
enum ScanningMode implements pulumi.PulumiEnum<String> {
  default_("Default");

  const ScanningMode(this.wireValue);
  @override
  final String wireValue;

  static ScanningMode fromValue(String value) {
    for (final item in ScanningMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanningMode value: $value');
  }
}
