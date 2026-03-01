// ignore_for_file: unused_element, unnecessary_cast


class WorkflowIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned`
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are `SystemAssigned`, `UserAssigned`.
  final String type;

  /// Creates a new [WorkflowIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are `SystemAssigned`, `UserAssigned`.
  WorkflowIdentity({
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

  factory WorkflowIdentity.fromMap(Map<String, dynamic> map) {
    return WorkflowIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

