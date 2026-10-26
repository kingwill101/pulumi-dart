import 'package:pulumi/pulumi.dart' as pulumi;

/// Period Type.
enum GoogleCloudChannelV1PeriodPeriodType implements pulumi.PulumiEnum<String> {
  periodTypeUnspecified("PERIOD_TYPE_UNSPECIFIED"),
  day("DAY"),
  month("MONTH"),
  year("YEAR");

  const GoogleCloudChannelV1PeriodPeriodType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudChannelV1PeriodPeriodType fromValue(String value) {
    for (final item in GoogleCloudChannelV1PeriodPeriodType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudChannelV1PeriodPeriodType value: $value');
  }
}
