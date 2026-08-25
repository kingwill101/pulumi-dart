// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_cluster_authorization_admin_group.dart';
import 'azure_cluster_authorization_admin_user.dart';

class AzureClusterAuthorization {
  /// Groups of users that can perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the groups. Up to ten admin groups can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final pulumi.Input<List<AzureClusterAuthorizationAdminGroup>?>? adminGroups;
  /// Users that can perform operations as a cluster admin. A new ClusterRoleBinding will be created to grant the cluster-admin ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final pulumi.Input<List<AzureClusterAuthorizationAdminUser>> adminUsers;

  /// Creates a new [AzureClusterAuthorization].
  /// [adminGroups] Groups of users that can perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the groups. Up to ten admin groups can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  /// [adminUsers] Users that can perform operations as a cluster admin. A new ClusterRoleBinding will be created to grant the cluster-admin ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  const AzureClusterAuthorization({
    this.adminGroups,
    required this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroups': ?pulumi.Input.mapOptionalInputValue<List<AzureClusterAuthorizationAdminGroup>, List<Map<String, dynamic>>>(adminGroups, (value) => pulumi.Input.encodeList<AzureClusterAuthorizationAdminGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'adminUsers': pulumi.Input.mapInputValue<List<AzureClusterAuthorizationAdminUser>, List<Map<String, dynamic>>>(adminUsers, (value) => pulumi.Input.encodeList<AzureClusterAuthorizationAdminUser, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return AzureClusterAuthorization(
      adminGroups: (() { final guardedValue = map['adminGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureClusterAuthorizationAdminGroup>(guardedValue, (value) => AzureClusterAuthorizationAdminGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      adminUsers: pulumi.Input.fromValue(pulumi.Input.decodeList<AzureClusterAuthorizationAdminUser>(map['adminUsers']!, (value) => AzureClusterAuthorizationAdminUser.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
