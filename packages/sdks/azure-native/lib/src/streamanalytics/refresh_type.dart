import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of data refresh option.
enum RefreshType implements pulumi.PulumiEnum<String> {
  valueStatic("Static"),
  valueRefreshPeriodicallyWithFull("RefreshPeriodicallyWithFull"),
  valueRefreshPeriodicallyWithDelta("RefreshPeriodicallyWithDelta");

  const RefreshType(this.wireValue);
  @override
  final String wireValue;

  static RefreshType fromValue(String value) {
    for (final item in RefreshType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RefreshType value: $value');
  }
}
