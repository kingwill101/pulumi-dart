// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProvisionedClusterAzureActiveDirectory {
  /// A list of IDs of Microsoft Entra ID Groups. All members of the specified Microsoft Entra ID Groups have the cluster administrator access to the Kubernetes cluster.
  final pulumi.Input<List<String>>? adminGroupObjectIds;
  /// Whether to enable Azure RBAC for Kubernetes authorization. Defaults to `false`.
  final pulumi.Input<bool>? azureRbacEnabled;
  /// The Tenant ID to use for authentication. If not specified, the Tenant of the Arc Kubernetes Cluster will be used.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ProvisionedClusterAzureActiveDirectory].
  /// [adminGroupObjectIds] A list of IDs of Microsoft Entra ID Groups. All members of the specified Microsoft Entra ID Groups have the cluster administrator access to the Kubernetes cluster.
  /// [azureRbacEnabled] Whether to enable Azure RBAC for Kubernetes authorization. Defaults to `false`.
  /// [tenantId] The Tenant ID to use for authentication. If not specified, the Tenant of the Arc Kubernetes Cluster will be used.
  const ProvisionedClusterAzureActiveDirectory({
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
      adminGroupObjectIds: (() { final guardedValue = map['adminGroupObjectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      azureRbacEnabled: (() { final guardedValue = map['azureRbacEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

