/// The shell type of the cloud shell.
enum ShellType {
  valueBash("bash"),
  valuePwsh("pwsh"),
  valuePowershell("powershell");

  const ShellType(this.wireValue);
  final String wireValue;

  static ShellType fromValue(String value) {
    for (final item in ShellType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShellType value: $value');
  }
}

