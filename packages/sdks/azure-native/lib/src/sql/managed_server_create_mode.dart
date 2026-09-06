import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the mode of database creation.
///
/// Default: Regular instance creation.
///
/// Restore: Creates an instance by restoring a set of backups to specific point in time. RestorePointInTime and SourceManagedInstanceId must be specified.
enum ManagedServerCreateMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore");

  const ManagedServerCreateMode(this.wireValue);
  @override
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
