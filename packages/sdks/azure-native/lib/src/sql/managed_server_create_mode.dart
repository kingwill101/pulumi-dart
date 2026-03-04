/// Specifies the mode of database creation.
///
/// Default: Regular instance creation.
///
/// Restore: Creates an instance by restoring a set of backups to specific point in time. RestorePointInTime and SourceManagedInstanceId must be specified.
enum ManagedServerCreateMode {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore");

  const ManagedServerCreateMode(this.wireValue);
  final String wireValue;

  static ManagedServerCreateMode fromValue(String value) {
    for (final item in ManagedServerCreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedServerCreateMode value: $value');
  }
}
