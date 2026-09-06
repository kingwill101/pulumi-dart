// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePlacementHint {
  /// The specification of whether this hint supports affinity or anti-affinity with the referenced resources.
  final pulumi.Input<dynamic> hintType;
  /// The resource ID of the target object that the placement hints will be checked against, e.g., the bare metal node to host the virtual machine.
  final pulumi.Input<String> resourceId;
  /// The indicator of whether the hint is a hard or soft requirement during scheduling.
  final pulumi.Input<dynamic> schedulingExecution;
  /// The scope for the virtual machine affinity or anti-affinity placement hint. It should always be "Machine" in the case of node affinity.
  final pulumi.Input<dynamic> scope;

  /// Creates a new [VirtualMachinePlacementHint].
  /// [hintType] The specification of whether this hint supports affinity or anti-affinity with the referenced resources.
  /// [resourceId] The resource ID of the target object that the placement hints will be checked against, e.g., the bare metal node to host the virtual machine.
  /// [schedulingExecution] The indicator of whether the hint is a hard or soft requirement during scheduling.
  /// [scope] The scope for the virtual machine affinity or anti-affinity placement hint. It should always be "Machine" in the case of node affinity.
  const VirtualMachinePlacementHint({
    required this.hintType,
    required this.resourceId,
    required this.schedulingExecution,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hintType': hintType,
      'resourceId': resourceId,
      'schedulingExecution': schedulingExecution,
      'scope': scope,
    };
  }

  factory VirtualMachinePlacementHint.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePlacementHint(
      hintType: pulumi.Input.fromValue(map['hintType']),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      schedulingExecution: pulumi.Input.fromValue(map['schedulingExecution']),
      scope: pulumi.Input.fromValue(map['scope']),
    );
  }
}
