/// The backup type, which suggests the trigger for the backup.
enum BackupType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupType(this.wireValue);
  final String wireValue;

  static BackupType fromValue(String value) {
    for (final item in BackupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupType value: $value');
  }
}
