/// SQL IaaS Agent least privilege mode.
enum LeastPrivilegeMode {
  enabled("Enabled"),
  notSet("NotSet");

  const LeastPrivilegeMode(this.wireValue);
  final String wireValue;

  static LeastPrivilegeMode fromValue(String value) {
    for (final item in LeastPrivilegeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LeastPrivilegeMode value: $value');
  }
}
