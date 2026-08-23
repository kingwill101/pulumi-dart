// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_authorization_admin_user.dart';

class VMwareClusterAuthorization {
  /// Users that will be granted the cluster-admin role on the cluster, providing
  /// full access to the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterAuthorizationAdminUser>>? adminUsers;

  /// Creates a new [VMwareClusterAuthorization].
  /// [adminUsers] Users that will be granted the cluster-admin role on the cluster, providing
  const VMwareClusterAuthorization({
    this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsers': ?pulumi.Input.mapOptionalInputValue<List<VMwareClusterAuthorizationAdminUser>, List<Map<String, dynamic>>>(adminUsers, (value) => pulumi.Input.encodeList<VMwareClusterAuthorizationAdminUser, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VMwareClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return VMwareClusterAuthorization(
      adminUsers: (() { final guardedValue = map['adminUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMwareClusterAuthorizationAdminUser>(guardedValue, (value) => VMwareClusterAuthorizationAdminUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
