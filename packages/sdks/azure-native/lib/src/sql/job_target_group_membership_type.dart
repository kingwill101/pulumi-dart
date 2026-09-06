import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether the target is included or excluded from the group.
enum JobTargetGroupMembershipType implements pulumi.PulumiEnum<String> {
  valueInclude("Include"),
  valueExclude("Exclude");

  const JobTargetGroupMembershipType(this.wireValue);
  @override
  final String wireValue;

  static JobTargetGroupMembershipType fromValue(String value) {
    for (final item in JobTargetGroupMembershipType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTargetGroupMembershipType value: $value');
  }
}
