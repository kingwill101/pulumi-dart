/// Required. The allowed OS type.
enum OsConstraintOsType {
  osUnspecified("OS_UNSPECIFIED"),
  desktopMac("DESKTOP_MAC"),
  desktopWindows("DESKTOP_WINDOWS"),
  desktopLinux("DESKTOP_LINUX"),
  desktopChromeOs("DESKTOP_CHROME_OS"),
  android("ANDROID"),
  ios("IOS");

  const OsConstraintOsType(this.wireValue);
  final String wireValue;

  static OsConstraintOsType fromValue(String value) {
    for (final item in OsConstraintOsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsConstraintOsType value: $value');
  }
}

