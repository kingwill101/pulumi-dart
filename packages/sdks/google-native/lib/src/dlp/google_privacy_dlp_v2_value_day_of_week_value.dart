import 'package:pulumi/pulumi.dart' as pulumi;

/// day of week
enum GooglePrivacyDlpV2ValueDayOfWeekValue implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const GooglePrivacyDlpV2ValueDayOfWeekValue(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2ValueDayOfWeekValue fromValue(String value) {
    for (final item in GooglePrivacyDlpV2ValueDayOfWeekValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2ValueDayOfWeekValue value: $value');
  }
}
