import 'package:pulumi/pulumi.dart' as pulumi;

/// Report type.
enum ReportType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  totalCostOfOwnership("TOTAL_COST_OF_OWNERSHIP");

  const ReportType(this.wireValue);
  @override
  final String wireValue;

  static ReportType fromValue(String value) {
    for (final item in ReportType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportType value: $value');
  }
}
