/// Backup schedule type.
enum BackupScheduleType {
  manual("Manual"),
  automated("Automated");

  const BackupScheduleType(this.value);
  final String value;

  static BackupScheduleType fromValue(String value) {
    for (final item in BackupScheduleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupScheduleType value: $value');
  }
}

