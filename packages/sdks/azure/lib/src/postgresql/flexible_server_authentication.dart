// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerAuthentication {
  /// Whether Active Directory authentication is allowed to access the PostgreSQL Flexible Server. Defaults to `false`.
  final pulumi.Input<bool>? activeDirectoryAuthEnabled;
  /// Whether password authentication is allowed to access the PostgreSQL Flexible Server. Defaults to `true`.
  final pulumi.Input<bool>? passwordAuthEnabled;
  /// The Tenant ID of the Azure Active Directory which is used by the Active Directory authentication. `active_directory_auth_enabled` must be set to `true`.
  ///
  /// > **Note:** Setting `active_directory_auth_enabled` to `true` requires a Service Principal for the Postgres Flexible Server. For more details see [this document](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-configure-sign-in-azure-ad-authentication).
  ///
  /// > **Note:** `tenant_id` is required when `active_directory_auth_enabled` is set to `true`. And it should not be specified when `active_directory_auth_enabled` is set to `false`
  final pulumi.Input<String>? tenantId;

  /// Creates a new [FlexibleServerAuthentication].
  /// [activeDirectoryAuthEnabled] Whether Active Directory authentication is allowed to access the PostgreSQL Flexible Server. Defaults to `false`.
  /// [passwordAuthEnabled] Whether password authentication is allowed to access the PostgreSQL Flexible Server. Defaults to `true`.
  /// [tenantId] The Tenant ID of the Azure Active Directory which is used by the Active Directory authentication. `active_directory_auth_enabled` must be set to `true`.
  FlexibleServerAuthentication({
    this.activeDirectoryAuthEnabled,
    this.passwordAuthEnabled,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuthEnabled': ?activeDirectoryAuthEnabled,
      'passwordAuthEnabled': ?passwordAuthEnabled,
      'tenantId': ?tenantId,
    };
  }

  factory FlexibleServerAuthentication.fromMap(Map<String, dynamic> map) {
    return FlexibleServerAuthentication(
      activeDirectoryAuthEnabled: map['activeDirectoryAuthEnabled'] == null ? null : (map['activeDirectoryAuthEnabled']! as bool).input(),
      passwordAuthEnabled: map['passwordAuthEnabled'] == null ? null : (map['passwordAuthEnabled']! as bool).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

