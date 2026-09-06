import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of auto scaling mechanism.
enum AutoScalingMechanismKind implements pulumi.PulumiEnum<String> {
  valueAddRemoveReplica("AddRemoveReplica");

  const AutoScalingMechanismKind(this.wireValue);
  @override
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
