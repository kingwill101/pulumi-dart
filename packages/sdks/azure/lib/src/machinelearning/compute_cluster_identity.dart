// ignore_for_file: unused_element, unnecessary_cast


class ComputeClusterIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Cluster.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Cluster. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  final String type;

  /// Creates a new [ComputeClusterIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Cluster.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Cluster. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  ComputeClusterIdentity({
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

  factory ComputeClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ComputeClusterIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

