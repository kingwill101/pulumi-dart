// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user.dart';

/// Authorization defines the On-Prem cluster authorization configuration to bootstrap onto the admin cluster.
class Authorization {
  /// For VMware and bare metal user clusters, users will be granted the cluster-admin role on the cluster, which provides full administrative access to the cluster. For bare metal admin clusters, users will be granted the cluster-view role, which limits users to read-only access.
  final pulumi.Input<List<ClusterUser>>? adminUsers;

  /// Creates a new [Authorization].
  /// [adminUsers] For VMware and bare metal user clusters, users will be granted the cluster-admin role on the cluster, which provides full administrative access to the cluster. For bare metal admin clusters, users will be granted the cluster-view role, which limits users to read-only access.
  Authorization({
    this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsers': ?pulumi.Input.mapOptionalInputValue<List<ClusterUser>, List<Map<String, dynamic>>>(adminUsers, (value) => pulumi.Input.encodeList<ClusterUser, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Authorization.fromMap(Map<String, dynamic> map) {
    return Authorization(
      adminUsers: map['adminUsers'] == null ? null : (pulumi.Input.decodeList<ClusterUser>(map['adminUsers'], (value) => ClusterUser.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

