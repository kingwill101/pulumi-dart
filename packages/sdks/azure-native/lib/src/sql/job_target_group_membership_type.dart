/// Whether the target is included or excluded from the group.
enum JobTargetGroupMembershipType {
  valueInclude("Include"),
  valueExclude("Exclude");

  const JobTargetGroupMembershipType(this.wireValue);
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
