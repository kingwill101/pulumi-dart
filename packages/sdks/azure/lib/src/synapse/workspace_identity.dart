// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Synapse Workspace.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be associated with this Synapse Workspace. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` (to enable both).
  final String type;

  /// Creates a new [WorkspaceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Synapse Workspace.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  /// [type] Specifies the type of Managed Service Identity that should be associated with this Synapse Workspace. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` (to enable both).
  WorkspaceIdentity({
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

  factory WorkspaceIdentity.fromMap(Map<String, dynamic> map) {
    return WorkspaceIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

