import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of usage set for this InternalRange.
enum InternalRangeUsage implements pulumi.PulumiEnum<String> {
  usageUnspecified("USAGE_UNSPECIFIED"),
  forVpc("FOR_VPC"),
  externalToVpc("EXTERNAL_TO_VPC");

  const InternalRangeUsage(this.wireValue);
  @override
  final String wireValue;

  static InternalRangeUsage fromValue(String value) {
    for (final item in InternalRangeUsage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangeUsage value: $value');
  }
}
