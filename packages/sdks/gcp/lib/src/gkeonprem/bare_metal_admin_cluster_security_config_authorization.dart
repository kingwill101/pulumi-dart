// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_security_config_authorization_admin_user.dart';

class BareMetalAdminClusterSecurityConfigAuthorization {
  /// Users that will be granted the cluster-admin role on the cluster, providing full access to the cluster.
  /// Structure is documented below.
  final pulumi.Input<
    List<BareMetalAdminClusterSecurityConfigAuthorizationAdminUser>
  >
  adminUsers;

  /// Creates a new [BareMetalAdminClusterSecurityConfigAuthorization].
  /// [adminUsers] Users that will be granted the cluster-admin role on the cluster, providing full access to the cluster.
  BareMetalAdminClusterSecurityConfigAuthorization({required this.adminUsers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsers':
          pulumi.Input.mapInputValue<
            List<BareMetalAdminClusterSecurityConfigAuthorizationAdminUser>,
            List<Map<String, dynamic>>
          >(
            adminUsers,
            (value) =>
                pulumi.Input.encodeList<
                  BareMetalAdminClusterSecurityConfigAuthorizationAdminUser,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BareMetalAdminClusterSecurityConfigAuthorization.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterSecurityConfigAuthorization(
      adminUsers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          BareMetalAdminClusterSecurityConfigAuthorizationAdminUser
        >(
          map['adminUsers']!,
          (value) =>
              BareMetalAdminClusterSecurityConfigAuthorizationAdminUser.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
