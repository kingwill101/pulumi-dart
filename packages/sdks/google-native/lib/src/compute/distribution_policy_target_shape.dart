/// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
enum DistributionPolicyTargetShape {
  any("ANY"),
  anySingleZone("ANY_SINGLE_ZONE"),
  balanced("BALANCED"),
  even("EVEN");

  const DistributionPolicyTargetShape(this.wireValue);
  final String wireValue;

  static DistributionPolicyTargetShape fromValue(String value) {
    for (final item in DistributionPolicyTargetShape.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionPolicyTargetShape value: $value');
  }
}
