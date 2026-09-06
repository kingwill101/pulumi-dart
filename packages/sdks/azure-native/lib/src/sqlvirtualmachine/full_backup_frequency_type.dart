import 'package:pulumi/pulumi.dart' as pulumi;

/// Frequency of full backups. In both cases, full backups begin during the next scheduled time window.
enum FullBackupFrequencyType implements pulumi.PulumiEnum<String> {
  daily("Daily"),
  weekly("Weekly");

  const FullBackupFrequencyType(this.wireValue);
  @override
  final String wireValue;

  static FullBackupFrequencyType fromValue(String value) {
    for (final item in FullBackupFrequencyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FullBackupFrequencyType value: $value');
  }
}
