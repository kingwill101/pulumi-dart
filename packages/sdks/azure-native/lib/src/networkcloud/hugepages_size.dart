/// The size of the hugepages to allocate.
enum HugepagesSize {
  value2M("2M"),
  value1G("1G");

  const HugepagesSize(this.value);
  final String value;

  static HugepagesSize fromValue(String value) {
    for (final item in HugepagesSize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HugepagesSize value: $value');
  }
}

