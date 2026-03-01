/// The backup type, which suggests the trigger for the backup.
enum BackupType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupType(this.value);
  final String value;

  static BackupType fromValue(String value) {
    for (final item in BackupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupType value: $value');
  }
}

