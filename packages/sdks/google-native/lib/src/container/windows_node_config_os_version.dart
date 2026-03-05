/// OSVersion specifies the Windows node config to be used on the node
enum WindowsNodeConfigOsVersion {
  osVersionUnspecified("OS_VERSION_UNSPECIFIED"),
  osVersionLtsc2019("OS_VERSION_LTSC2019"),
  osVersionLtsc2022("OS_VERSION_LTSC2022");

  const WindowsNodeConfigOsVersion(this.wireValue);
  final String wireValue;

  static WindowsNodeConfigOsVersion fromValue(String value) {
    for (final item in WindowsNodeConfigOsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsNodeConfigOsVersion value: $value');
  }
}

