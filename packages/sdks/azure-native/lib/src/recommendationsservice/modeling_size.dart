/// Modeling size controls the maximum supported input data size.
enum ModelingSize {
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const ModelingSize(this.wireValue);
  final String wireValue;

  static ModelingSize fromValue(String value) {
    for (final item in ModelingSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelingSize value: $value');
  }
}

