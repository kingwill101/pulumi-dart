/// Common api versions merge mode.
enum CommonApiVersionsMergeMode {
  merge("Merge"),
  overwrite("Overwrite");

  const CommonApiVersionsMergeMode(this.value);
  final String value;

  static CommonApiVersionsMergeMode fromValue(String value) {
    for (final item in CommonApiVersionsMergeMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommonApiVersionsMergeMode value: $value');
  }
}

