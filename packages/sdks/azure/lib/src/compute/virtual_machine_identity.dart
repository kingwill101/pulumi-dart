// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Virtual Machine.
  ///
  /// > **NOTE:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Virtual Machine. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  ///
  /// > **NOTE:** Managed Service Identity previously required the installation of a VM Extension, but this information [is now available via the Azure Instance Metadata Service](https://docs.microsoft.com/azure/active-directory/managed-service-identity/overview#how-does-it-work).
  ///
  /// > **NOTE:** When `type` is set to `SystemAssigned`, identity the Principal ID can be retrieved after the virtual machine has been created. More details are available below. See [documentation](https://docs.microsoft.com/azure/active-directory/managed-service-identity/overview) for additional information.
  final String type;

  /// Creates a new [VirtualMachineIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Virtual Machine.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] Optional.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Virtual Machine. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  VirtualMachineIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory VirtualMachineIdentity.fromMap(Map<String, dynamic> map) {
    return VirtualMachineIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

