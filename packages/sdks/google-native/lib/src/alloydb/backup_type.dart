import 'package:pulumi/pulumi.dart' as pulumi;

/// The backup type, which suggests the trigger for the backup.
enum BackupType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupType(this.wireValue);
  @override
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
