import 'package:pulumi/pulumi.dart' as pulumi;

/// The backup type, which suggests the trigger for the backup.
enum BackupTypeAlloydbV1alpha implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupTypeAlloydbV1alpha(this.wireValue);
  @override
  final String wireValue;

  static BackupTypeAlloydbV1alpha fromValue(String value) {
    for (final item in BackupTypeAlloydbV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupTypeAlloydbV1alpha value: $value');
  }
}
