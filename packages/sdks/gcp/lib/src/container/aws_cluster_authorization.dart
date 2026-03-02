// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cluster_authorization_admin_group.dart';
import 'aws_cluster_authorization_admin_user.dart';

class AwsClusterAuthorization {
  /// Groups of users that can perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the groups. Up to ten admin groups can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final pulumi.Input<List<AwsClusterAuthorizationAdminGroup>>? adminGroups;
  /// Users to perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final pulumi.Input<List<AwsClusterAuthorizationAdminUser>> adminUsers;

  /// Creates a new [AwsClusterAuthorization].
  /// [adminGroups] Groups of users that can perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the groups. Up to ten admin groups can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  /// [adminUsers] Users to perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  AwsClusterAuthorization({
    this.adminGroups,
    required this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroups': ?pulumi.Input.mapOptionalInputValue<List<AwsClusterAuthorizationAdminGroup>, List<Map<String, dynamic>>>(adminGroups, (value) => pulumi.Input.encodeList<AwsClusterAuthorizationAdminGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'adminUsers': pulumi.Input.mapInputValue<List<AwsClusterAuthorizationAdminUser>, List<Map<String, dynamic>>>(adminUsers, (value) => pulumi.Input.encodeList<AwsClusterAuthorizationAdminUser, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return AwsClusterAuthorization(
      adminGroups: map['adminGroups'] == null ? null : (pulumi.Input.decodeList<AwsClusterAuthorizationAdminGroup>(map['adminGroups'], (value) => AwsClusterAuthorizationAdminGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      adminUsers: (pulumi.Input.decodeList<AwsClusterAuthorizationAdminUser>(map['adminUsers'], (value) => AwsClusterAuthorizationAdminUser.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

