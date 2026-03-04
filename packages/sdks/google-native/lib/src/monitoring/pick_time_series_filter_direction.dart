/// How to use the ranking to select time series that pass through the filter.
enum PickTimeSeriesFilterDirection {
  directionUnspecified("DIRECTION_UNSPECIFIED"),
  top("TOP"),
  bottom("BOTTOM");

  const PickTimeSeriesFilterDirection(this.wireValue);
  final String wireValue;

  static PickTimeSeriesFilterDirection fromValue(String value) {
    for (final item in PickTimeSeriesFilterDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PickTimeSeriesFilterDirection value: $value');
  }
}
