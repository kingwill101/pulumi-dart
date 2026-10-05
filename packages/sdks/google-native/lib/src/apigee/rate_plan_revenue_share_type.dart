import 'package:pulumi/pulumi.dart' as pulumi;

/// Method used to calculate the revenue that is shared with developers.
enum RatePlanRevenueShareType implements pulumi.PulumiEnum<String> {
  revenueShareTypeUnspecified("REVENUE_SHARE_TYPE_UNSPECIFIED"),
  fixed("FIXED"),
  volumeBanded("VOLUME_BANDED");

  const RatePlanRevenueShareType(this.wireValue);
  @override
  final String wireValue;

  static RatePlanRevenueShareType fromValue(String value) {
    for (final item in RatePlanRevenueShareType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RatePlanRevenueShareType value: $value');
  }
}
