/// Selection of how the type evaluation is applied to the cluster calculation.
enum ValidationThresholdGrouping {
  valuePerCluster("PerCluster"),
  valuePerRack("PerRack");

  const ValidationThresholdGrouping(this.wireValue);
  final String wireValue;

  static ValidationThresholdGrouping fromValue(String value) {
    for (final item in ValidationThresholdGrouping.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationThresholdGrouping value: $value');
  }
}

