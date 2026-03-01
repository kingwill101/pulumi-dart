// ignore_for_file: unused_element, unnecessary_cast


class OrchestratedVirtualMachineScaleSetIdentity {
  /// Specifies a list of User Managed Identity IDs to be assigned to this Windows Virtual Machine Scale Set.
  final List<String> identityIds;
  /// The type of Managed Identity that should be configured on this Windows Virtual Machine Scale Set. Only possible value is `UserAssigned`.
  final String type;

  /// Creates a new [OrchestratedVirtualMachineScaleSetIdentity].
  /// [identityIds] Specifies a list of User Managed Identity IDs to be assigned to this Windows Virtual Machine Scale Set.
  /// [type] The type of Managed Identity that should be configured on this Windows Virtual Machine Scale Set. Only possible value is `UserAssigned`.
  OrchestratedVirtualMachineScaleSetIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory OrchestratedVirtualMachineScaleSetIdentity.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

