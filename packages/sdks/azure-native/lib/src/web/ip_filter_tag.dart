/// Defines what this IP filter will be used for. This is to support IP filtering on proxies.
enum IpFilterTag {
  valueDefault("Default"),
  valueXffProxy("XffProxy"),
  valueServiceTag("ServiceTag");

  const IpFilterTag(this.value);
  final String value;

  static IpFilterTag fromValue(String value) {
    for (final item in IpFilterTag.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFilterTag value: $value');
  }
}

