/// The administrative status of the auto export job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto export job. By default it is set to 'Enable'.
enum AutoExportJobAdminStatus {
  valueEnable("Enable"),
  valueDisable("Disable");

  const AutoExportJobAdminStatus(this.wireValue);
  final String wireValue;

  static AutoExportJobAdminStatus fromValue(String value) {
    for (final item in AutoExportJobAdminStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoExportJobAdminStatus value: $value');
  }
}

