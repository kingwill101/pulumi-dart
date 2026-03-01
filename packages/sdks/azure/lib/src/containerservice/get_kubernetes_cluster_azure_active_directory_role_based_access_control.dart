// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl {
  /// A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster.
  final List<String> adminGroupObjectIds;
  /// Is Role Based Access Control based on Azure AD enabled?
  final bool azureRbacEnabled;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Kubernetes Cluster.
  final String tenantId;

  /// Creates a new [GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl].
  /// [adminGroupObjectIds] A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster.
  /// [azureRbacEnabled] Is Role Based Access Control based on Azure AD enabled?
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Kubernetes Cluster.
  GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl({
    required this.adminGroupObjectIds,
    required this.azureRbacEnabled,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroupObjectIds': adminGroupObjectIds,
      'azureRbacEnabled': azureRbacEnabled,
      'tenantId': tenantId,
    };
  }

  factory GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAzureActiveDirectoryRoleBasedAccessControl(
      adminGroupObjectIds: (map['adminGroupObjectIds'] as List).cast<String>(),
      azureRbacEnabled: map['azureRbacEnabled'] as bool,
      tenantId: map['tenantId'] as String,
    );
  }
}

