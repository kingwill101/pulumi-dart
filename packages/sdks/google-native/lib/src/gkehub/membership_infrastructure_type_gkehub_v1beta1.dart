/// Optional. The infrastructure type this Membership is running on.
enum MembershipInfrastructureTypeGkehubV1beta1 {
  infrastructureTypeUnspecified("INFRASTRUCTURE_TYPE_UNSPECIFIED"),
  onPrem("ON_PREM"),
  multiCloud("MULTI_CLOUD");

  const MembershipInfrastructureTypeGkehubV1beta1(this.wireValue);
  final String wireValue;

  static MembershipInfrastructureTypeGkehubV1beta1 fromValue(String value) {
    for (final item in MembershipInfrastructureTypeGkehubV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown MembershipInfrastructureTypeGkehubV1beta1 value: $value',
    );
  }
}
