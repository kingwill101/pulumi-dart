import 'package:pulumi/pulumi.dart' as pulumi;

/// Retention duration type: days/weeks/months/years
/// Used only if TieringMode is set to TierAfter
enum RetentionDurationType implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueDays("Days"),
  valueWeeks("Weeks"),
  valueMonths("Months"),
  valueYears("Years");

  const RetentionDurationType(this.wireValue);
  @override
  final String wireValue;

  static RetentionDurationType fromValue(String value) {
    for (final item in RetentionDurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetentionDurationType value: $value');
  }
}
