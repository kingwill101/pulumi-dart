import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of backup, VM, SQL or HANA.
enum BackupType implements pulumi.PulumiEnum<String> {
  valueVM("VM"),
  valueSQL("SQL"),
  valueHANA("HANA");

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
