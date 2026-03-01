// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualMachineIdentity {
  /// The list of User Managed Identity IDs which are assigned to the Virtual Machine.
  final List<String> identityIds;
  /// The ID of the System Managed Service Principal assigned to the Virtual Machine.
  final String principalId;
  /// The ID of the Tenant of the System Managed Service Principal assigned to the Virtual Machine.
  final String tenantId;
  /// The identity type of the Managed Identity assigned to the Virtual Machine.
  final String type;

  /// Creates a new [GetVirtualMachineIdentity].
  /// [identityIds] The list of User Managed Identity IDs which are assigned to the Virtual Machine.
  /// [principalId] The ID of the System Managed Service Principal assigned to the Virtual Machine.
  /// [tenantId] The ID of the Tenant of the System Managed Service Principal assigned to the Virtual Machine.
  /// [type] The identity type of the Managed Identity assigned to the Virtual Machine.
  GetVirtualMachineIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetVirtualMachineIdentity.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

