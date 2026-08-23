/// Optional. The infrastructure type this Membership is running on.
enum MembershipInfrastructureType {
  infrastructureTypeUnspecified("INFRASTRUCTURE_TYPE_UNSPECIFIED"),
  onPrem("ON_PREM"),
  multiCloud("MULTI_CLOUD");

  const MembershipInfrastructureType(this.wireValue);
  final String wireValue;

  static MembershipInfrastructureType fromValue(String value) {
    for (final item in MembershipInfrastructureType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MembershipInfrastructureType value: $value');
  }
}
