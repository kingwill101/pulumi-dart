/// The managed application management mode.
enum ApplicationManagementMode {
  valueNotSpecified("NotSpecified"),
  valueUnmanaged("Unmanaged"),
  valueManaged("Managed");

  const ApplicationManagementMode(this.wireValue);
  final String wireValue;

  static ApplicationManagementMode fromValue(String value) {
    for (final item in ApplicationManagementMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationManagementMode value: $value');
  }
}

