// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachinePlacementHint {
  /// The specification of whether this hint supports affinity or anti-affinity with the referenced resources.
  final String hintType;
  /// The resource ID of the target object that the placement hints will be checked against, e.g., the bare metal node to host the virtual machine.
  final String resourceId;
  /// The indicator of whether the hint is a hard or soft requirement during scheduling.
  final String schedulingExecution;
  /// The scope for the virtual machine affinity or anti-affinity placement hint. It should always be "Machine" in the case of node affinity.
  final String scope;

  /// Creates a new [VirtualMachinePlacementHint].
  /// [hintType] The specification of whether this hint supports affinity or anti-affinity with the referenced resources.
  /// [resourceId] The resource ID of the target object that the placement hints will be checked against, e.g., the bare metal node to host the virtual machine.
  /// [schedulingExecution] The indicator of whether the hint is a hard or soft requirement during scheduling.
  /// [scope] The scope for the virtual machine affinity or anti-affinity placement hint. It should always be "Machine" in the case of node affinity.
  VirtualMachinePlacementHint({
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
      hintType: map['hintType'] as String,
      resourceId: map['resourceId'] as String,
      schedulingExecution: map['schedulingExecution'] as String,
      scope: map['scope'] as String,
    );
  }
}

