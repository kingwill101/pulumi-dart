// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePlacementHintResponse {
  /// The specification of whether this hint supports affinity or anti-affinity with the referenced resources.
  final pulumi.Input<String> hintType;
  /// The resource ID of the target object that the placement hints will be checked against, e.g., the bare metal node to host the virtual machine.
  final pulumi.Input<String> resourceId;
  /// The indicator of whether the hint is a hard or soft requirement during scheduling.
  final pulumi.Input<String> schedulingExecution;
  /// The scope for the virtual machine affinity or anti-affinity placement hint. It should always be "Machine" in the case of node affinity.
  final pulumi.Input<String> scope;

  /// Creates a new [VirtualMachinePlacementHintResponse].
  /// [hintType] The specification of whether this hint supports affinity or anti-affinity with the referenced resources.
  /// [resourceId] The resource ID of the target object that the placement hints will be checked against, e.g., the bare metal node to host the virtual machine.
  /// [schedulingExecution] The indicator of whether the hint is a hard or soft requirement during scheduling.
  /// [scope] The scope for the virtual machine affinity or anti-affinity placement hint. It should always be "Machine" in the case of node affinity.
  const VirtualMachinePlacementHintResponse({
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

  factory VirtualMachinePlacementHintResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePlacementHintResponse(
      hintType: pulumi.Input.fromValue(map['hintType'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      schedulingExecution: pulumi.Input.fromValue(map['schedulingExecution'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
