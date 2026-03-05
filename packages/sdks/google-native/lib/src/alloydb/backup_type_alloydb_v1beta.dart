/// The backup type, which suggests the trigger for the backup.
enum BackupTypeAlloydbV1beta {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupTypeAlloydbV1beta(this.wireValue);
  final String wireValue;

  static BackupTypeAlloydbV1beta fromValue(String value) {
    for (final item in BackupTypeAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupTypeAlloydbV1beta value: $value');
  }
}

