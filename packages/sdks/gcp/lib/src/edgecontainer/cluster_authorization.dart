// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_authorization_admin_users.dart';

class ClusterAuthorization {
  /// User that will be granted the cluster-admin role on the cluster, providing
  /// full access to the cluster. Currently, this is a singular field, but will
  /// be expanded to allow multiple admins in the future.
  /// Structure is documented below.
  final pulumi.Input<ClusterAuthorizationAdminUsers> adminUsers;

  /// Creates a new [ClusterAuthorization].
  /// [adminUsers] User that will be granted the cluster-admin role on the cluster, providing
  const ClusterAuthorization({
    required this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsers': pulumi.Input.mapInputValue<ClusterAuthorizationAdminUsers, Map<String, dynamic>>(adminUsers, (value) => value.toMap()),
    };
  }

  factory ClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return ClusterAuthorization(
      adminUsers: pulumi.Input.fromValue(ClusterAuthorizationAdminUsers.fromMap((map['adminUsers']! as Map).cast<String, dynamic>())),
    );
  }
}
