/// The managed application management mode.
enum ApplicationManagementMode {
  valueNotSpecified("NotSpecified"),
  valueUnmanaged("Unmanaged"),
  valueManaged("Managed");

  const ApplicationManagementMode(this.value);
  final String value;

  static ApplicationManagementMode fromValue(String value) {
    for (final item in ApplicationManagementMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationManagementMode value: $value');
  }
}

