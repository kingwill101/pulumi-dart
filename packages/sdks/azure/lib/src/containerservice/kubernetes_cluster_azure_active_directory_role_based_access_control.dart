// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl {
  /// A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster.
  final pulumi.Input<List<String>>? adminGroupObjectIds;
  /// Is Role Based Access Control based on Azure AD enabled?
  final pulumi.Input<bool>? azureRbacEnabled;
  /// The Tenant ID used for Azure Active Directory Application. If this isn't specified the Tenant ID of the current Subscription is used.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl].
  /// [adminGroupObjectIds] A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster.
  /// [azureRbacEnabled] Is Role Based Access Control based on Azure AD enabled?
  /// [tenantId] The Tenant ID used for Azure Active Directory Application. If this isn't specified the Tenant ID of the current Subscription is used.
  KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl({
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

  factory KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterAzureActiveDirectoryRoleBasedAccessControl(
      adminGroupObjectIds: map['adminGroupObjectIds'] == null ? null : ((map['adminGroupObjectIds'] as List).cast<String>()).input(),
      azureRbacEnabled: map['azureRbacEnabled'] == null ? null : (map['azureRbacEnabled'] as bool).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

