/// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
enum DistributionPolicyTargetShapeComputeV1 {
  any("ANY"),
  anySingleZone("ANY_SINGLE_ZONE"),
  balanced("BALANCED"),
  even("EVEN");

  const DistributionPolicyTargetShapeComputeV1(this.wireValue);
  final String wireValue;

  static DistributionPolicyTargetShapeComputeV1 fromValue(String value) {
    for (final item in DistributionPolicyTargetShapeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionPolicyTargetShapeComputeV1 value: $value');
  }
}
