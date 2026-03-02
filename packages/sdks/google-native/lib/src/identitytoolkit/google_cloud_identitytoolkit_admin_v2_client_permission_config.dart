// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_client_permissions.dart';

/// Options related to how clients making requests on behalf of a tenant should be configured.
class GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig {
  /// Configuration related to restricting a user's ability to affect their account.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2ClientPermissions>? permissions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig].
  /// [permissions] Configuration related to restricting a user's ability to affect their account.
  GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig({
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2ClientPermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig(
      permissions: map['permissions'] == null ? null : (GoogleCloudIdentitytoolkitAdminV2ClientPermissions.fromMap((map['permissions']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

