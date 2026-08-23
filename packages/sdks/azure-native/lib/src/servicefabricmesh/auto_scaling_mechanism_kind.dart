/// The type of auto scaling mechanism.
enum AutoScalingMechanismKind {
  valueAddRemoveReplica("AddRemoveReplica");

  const AutoScalingMechanismKind(this.wireValue);
  final String wireValue;

  static AutoScalingMechanismKind fromValue(String value) {
    for (final item in AutoScalingMechanismKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingMechanismKind value: $value');
  }
}
