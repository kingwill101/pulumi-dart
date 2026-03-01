/// The type of auto scaling mechanism.
enum AutoScalingMechanismKind {
  valueAddRemoveReplica("AddRemoveReplica");

  const AutoScalingMechanismKind(this.value);
  final String value;

  static AutoScalingMechanismKind fromValue(String value) {
    for (final item in AutoScalingMechanismKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingMechanismKind value: $value');
  }
}

