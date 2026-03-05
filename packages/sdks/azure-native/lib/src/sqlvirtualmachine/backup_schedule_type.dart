/// Backup schedule type.
enum BackupScheduleType {
  manual("Manual"),
  automated("Automated");

  const BackupScheduleType(this.wireValue);
  final String wireValue;

  static BackupScheduleType fromValue(String value) {
    for (final item in BackupScheduleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupScheduleType value: $value');
  }
}

