// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualMachineScaleSetIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Virtual Machine Scale Set.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Virtual Machine Scale Set.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Virtual Machine Scale Set.
  final String tenantId;
  /// The Type of IP Tag.
  final String type;

  /// Creates a new [GetVirtualMachineScaleSetIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Virtual Machine Scale Set.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Virtual Machine Scale Set.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Virtual Machine Scale Set.
  /// [type] The Type of IP Tag.
  GetVirtualMachineScaleSetIdentity({
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

  factory GetVirtualMachineScaleSetIdentity.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

