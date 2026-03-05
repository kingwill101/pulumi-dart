/// Common api versions merge mode.
enum CommonApiVersionsMergeMode {
  merge("Merge"),
  overwrite("Overwrite");

  const CommonApiVersionsMergeMode(this.wireValue);
  final String wireValue;

  static CommonApiVersionsMergeMode fromValue(String value) {
    for (final item in CommonApiVersionsMergeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommonApiVersionsMergeMode value: $value');
  }
}

