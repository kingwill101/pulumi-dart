import 'package:pulumi/pulumi.dart' as pulumi;

/// How to use the ranking to select time series that pass through the filter.
enum PickTimeSeriesFilterDirection implements pulumi.PulumiEnum<String> {
  directionUnspecified("DIRECTION_UNSPECIFIED"),
  top("TOP"),
  bottom("BOTTOM");

  const PickTimeSeriesFilterDirection(this.wireValue);
  @override
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
