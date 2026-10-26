import 'package:pulumi/pulumi.dart' as pulumi;

/// The backup type, which suggests the trigger for the backup.
enum BackupTypeAlloydbV1beta implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupTypeAlloydbV1beta(this.wireValue);
  @override
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
