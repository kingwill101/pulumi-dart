import 'package:pulumi/pulumi.dart' as pulumi;

/// The BackupStorageAccessTier for the LTR backups
enum BackupStorageAccessTier implements pulumi.PulumiEnum<String> {
  valueHot("Hot"),
  valueArchive("Archive");

  const BackupStorageAccessTier(this.wireValue);
  @override
  final String wireValue;

  static BackupStorageAccessTier fromValue(String value) {
    for (final item in BackupStorageAccessTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupStorageAccessTier value: $value');
  }
}
