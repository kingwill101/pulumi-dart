// ignore_for_file: unused_element, unnecessary_cast


class DeploymentIdentity {
  /// Specifies a list of user managed identity ids to be assigned.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned`.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// Specifies the identity type of the NGINX Deployment. Possible values are `SystemAssigned`, `UserAssigned` or `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [DeploymentIdentity].
  /// [identityIds] Specifies a list of user managed identity ids to be assigned.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the identity type of the NGINX Deployment. Possible values are `SystemAssigned`, `UserAssigned` or `SystemAssigned, UserAssigned`.
  DeploymentIdentity({
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

  factory DeploymentIdentity.fromMap(Map<String, dynamic> map) {
    return DeploymentIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

