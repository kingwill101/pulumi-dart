/// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
enum DistributionPolicyTargetShapeComputeBeta {
  any("ANY"),
  anySingleZone("ANY_SINGLE_ZONE"),
  balanced("BALANCED"),
  even("EVEN");

  const DistributionPolicyTargetShapeComputeBeta(this.wireValue);
  final String wireValue;

  static DistributionPolicyTargetShapeComputeBeta fromValue(String value) {
    for (final item in DistributionPolicyTargetShapeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionPolicyTargetShapeComputeBeta value: $value');
  }
}
