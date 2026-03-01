/// Modeling size controls the maximum supported input data size.
enum ModelingSize {
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const ModelingSize(this.value);
  final String value;

  static ModelingSize fromValue(String value) {
    for (final item in ModelingSize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelingSize value: $value');
  }
}

