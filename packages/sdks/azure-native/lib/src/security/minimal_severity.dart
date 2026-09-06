import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the minimal alert severity which will be sent as email notifications
enum MinimalSeverity implements pulumi.PulumiEnum<String> {
  high("High"),
  medium("Medium"),
  low("Low");

  const MinimalSeverity(this.wireValue);
  @override
  final String wireValue;

  static MinimalSeverity fromValue(String value) {
    for (final item in MinimalSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalSeverity value: $value');
  }
}
