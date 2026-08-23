/// Frequency of full backups. In both cases, full backups begin during the next scheduled time window.
enum FullBackupFrequencyType {
  daily("Daily"),
  weekly("Weekly");

  const FullBackupFrequencyType(this.wireValue);
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
