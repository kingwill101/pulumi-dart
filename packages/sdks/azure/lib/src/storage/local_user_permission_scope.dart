// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_user_permission_scope_permissions.dart';

class LocalUserPermissionScope {
  /// A `permissions` block as defined below.
  final pulumi.Input<LocalUserPermissionScopePermissions> permissions;
  /// The container name (when `service` is set to `blob`) or the file share name (when `service` is set to `file`), used by the Storage Account Local User.
  final pulumi.Input<String> resourceName;
  /// The storage service used by this Storage Account Local User. Possible values are `blob` and `file`.
  final pulumi.Input<String> service;

  /// Creates a new [LocalUserPermissionScope].
  /// [permissions] A `permissions` block as defined below.
  /// [resourceName] The container name (when `service` is set to `blob`) or the file share name (when `service` is set to `file`), used by the Storage Account Local User.
  /// [service] The storage service used by this Storage Account Local User. Possible values are `blob` and `file`.
  LocalUserPermissionScope({
    required this.permissions,
    required this.resourceName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': pulumi.Input.mapInputValue<LocalUserPermissionScopePermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'resourceName': resourceName,
      'service': service,
    };
  }

  factory LocalUserPermissionScope.fromMap(Map<String, dynamic> map) {
    return LocalUserPermissionScope(
      permissions: (LocalUserPermissionScopePermissions.fromMap((map['permissions'] as Map).cast<String, dynamic>())).input(),
      resourceName: (map['resourceName'] as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}

