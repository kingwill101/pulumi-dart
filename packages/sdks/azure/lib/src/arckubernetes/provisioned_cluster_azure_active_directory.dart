// ignore_for_file: unused_element, unnecessary_cast


class ProvisionedClusterAzureActiveDirectory {
  /// A list of IDs of Microsoft Entra ID Groups. All members of the specified Microsoft Entra ID Groups have the cluster administrator access to the Kubernetes cluster.
  final List<String>? adminGroupObjectIds;
  /// Whether to enable Azure RBAC for Kubernetes authorization. Defaults to `false`.
  final bool? azureRbacEnabled;
  /// The Tenant ID to use for authentication. If not specified, the Tenant of the Arc Kubernetes Cluster will be used.
  final String? tenantId;

  /// Creates a new [ProvisionedClusterAzureActiveDirectory].
  /// [adminGroupObjectIds] A list of IDs of Microsoft Entra ID Groups. All members of the specified Microsoft Entra ID Groups have the cluster administrator access to the Kubernetes cluster.
  /// [azureRbacEnabled] Whether to enable Azure RBAC for Kubernetes authorization. Defaults to `false`.
  /// [tenantId] The Tenant ID to use for authentication. If not specified, the Tenant of the Arc Kubernetes Cluster will be used.
  ProvisionedClusterAzureActiveDirectory({
    this.adminGroupObjectIds,
    this.azureRbacEnabled,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroupObjectIds': ?adminGroupObjectIds,
      'azureRbacEnabled': ?azureRbacEnabled,
      'tenantId': ?tenantId,
    };
  }

  factory ProvisionedClusterAzureActiveDirectory.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterAzureActiveDirectory(
      adminGroupObjectIds: map['adminGroupObjectIds'] == null ? null : (map['adminGroupObjectIds'] as List).cast<String>(),
      azureRbacEnabled: map['azureRbacEnabled'] == null ? null : map['azureRbacEnabled'] as bool,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

