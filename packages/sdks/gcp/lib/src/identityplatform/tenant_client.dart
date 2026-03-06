// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_client_permissions.dart';

class TenantClient {
  /// Configuration related to restricting a user's ability to affect their account.
  /// Structure is documented below.
  final pulumi.Input<TenantClientPermissions>? permissions;

  /// Creates a new [TenantClient].
  /// [permissions] Configuration related to restricting a user's ability to affect their account.
  const TenantClient({
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?pulumi.Input.mapOptionalInputValue<TenantClientPermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
    };
  }

  factory TenantClient.fromMap(Map<String, dynamic> map) {
    return TenantClient(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TenantClientPermissions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

