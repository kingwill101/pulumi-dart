/// The size of the hugepages to allocate.
enum HugepagesSize {
  value2M("2M"),
  value1G("1G");

  const HugepagesSize(this.wireValue);
  final String wireValue;

  static HugepagesSize fromValue(String value) {
    for (final item in HugepagesSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HugepagesSize value: $value');
  }
}
