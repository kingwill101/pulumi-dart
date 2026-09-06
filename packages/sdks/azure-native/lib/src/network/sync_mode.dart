import 'package:pulumi/pulumi.dart' as pulumi;

/// Backend address synchronous mode for the backend pool
enum SyncMode implements pulumi.PulumiEnum<String> {
  valueAutomatic("Automatic"),
  valueManual("Manual");

  const SyncMode(this.wireValue);
  @override
  final String wireValue;

  static SyncMode fromValue(String value) {
    for (final item in SyncMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncMode value: $value');
  }
}
