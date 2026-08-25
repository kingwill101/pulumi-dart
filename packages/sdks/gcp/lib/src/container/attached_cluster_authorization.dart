// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttachedClusterAuthorization {
  /// Groups that can perform operations as a cluster admin. A managed
  /// ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole
  /// to the groups. Up to ten admin groups can be provided.
  /// For more info on RBAC, see
  /// https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final pulumi.Input<List<String>?>? adminGroups;
  /// Users that can perform operations as a cluster admin. A managed
  /// ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole
  /// to the users. Up to ten admin users can be provided.
  /// For more info on RBAC, see
  /// https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final pulumi.Input<List<String>?>? adminUsers;

  /// Creates a new [AttachedClusterAuthorization].
  /// [adminGroups] Groups that can perform operations as a cluster admin. A managed
  /// [adminUsers] Users that can perform operations as a cluster admin. A managed
  const AttachedClusterAuthorization({
    this.adminGroups,
    this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroups': ?adminGroups,
      'adminUsers': ?adminUsers,
    };
  }

  factory AttachedClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return AttachedClusterAuthorization(
      adminGroups: (() { final guardedValue = map['adminGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      adminUsers: (() { final guardedValue = map['adminUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
