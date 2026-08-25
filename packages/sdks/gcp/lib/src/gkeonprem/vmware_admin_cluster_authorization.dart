// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_authorization_viewer_user.dart';

class VmwareAdminClusterAuthorization {
  /// Users that will be granted the cluster-admin role on the cluster, providing
  /// full access to the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<VmwareAdminClusterAuthorizationViewerUser>?>? viewerUsers;

  /// Creates a new [VmwareAdminClusterAuthorization].
  /// [viewerUsers] Users that will be granted the cluster-admin role on the cluster, providing
  const VmwareAdminClusterAuthorization({
    this.viewerUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'viewerUsers': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterAuthorizationViewerUser>, List<Map<String, dynamic>>>(viewerUsers, (value) => pulumi.Input.encodeList<VmwareAdminClusterAuthorizationViewerUser, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VmwareAdminClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAuthorization(
      viewerUsers: (() { final guardedValue = map['viewerUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareAdminClusterAuthorizationViewerUser>(guardedValue, (value) => VmwareAdminClusterAuthorizationViewerUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
