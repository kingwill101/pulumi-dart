import 'package:pulumi/pulumi.dart' as pulumi;

/// Backup schedule type.
enum BackupScheduleType implements pulumi.PulumiEnum<String> {
  manual("Manual"),
  automated("Automated");

  const BackupScheduleType(this.wireValue);
  @override
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
