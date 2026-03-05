/// The type of backup, VM, SQL or HANA.
enum BackupType {
  valueVM("VM"),
  valueSQL("SQL"),
  valueHANA("HANA");

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

