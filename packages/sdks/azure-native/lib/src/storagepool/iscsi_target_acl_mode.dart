/// Mode for Target connectivity.
enum IscsiTargetAclMode {
  valueDynamic("Dynamic"),
  valueStatic("Static");

  const IscsiTargetAclMode(this.wireValue);
  final String wireValue;

  static IscsiTargetAclMode fromValue(String value) {
    for (final item in IscsiTargetAclMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IscsiTargetAclMode value: $value');
  }
}
