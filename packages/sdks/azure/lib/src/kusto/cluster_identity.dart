// ignore_for_file: unused_element, unnecessary_cast


class ClusterIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID associated with this System Assigned Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this System Assigned Managed Service Identity.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that is configured on this Kusto Cluster. Possible values are: `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [ClusterIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster.
  /// [principalId] The Principal ID associated with this System Assigned Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this System Assigned Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that is configured on this Kusto Cluster. Possible values are: `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  ClusterIdentity({
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

  factory ClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ClusterIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

