// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PermissionScope {
  /// The permissions for the local user. Possible values include: Read (r), Write (w), Delete (d), List (l), Create (c), Modify Ownership (o), and Modify Permissions (p).
  final pulumi.Input<String> permissions;
  /// The name of resource, normally the container name or the file share name, used by the local user.
  final pulumi.Input<String> resourceName;
  /// The service used by the local user, e.g. blob, file.
  final pulumi.Input<String> service;

  /// Creates a new [PermissionScope].
  /// [permissions] The permissions for the local user. Possible values include: Read (r), Write (w), Delete (d), List (l), Create (c), Modify Ownership (o), and Modify Permissions (p).
  /// [resourceName] The name of resource, normally the container name or the file share name, used by the local user.
  /// [service] The service used by the local user, e.g. blob, file.
  const PermissionScope({
    required this.permissions,
    required this.resourceName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
      'resourceName': resourceName,
      'service': service,
    };
  }

  factory PermissionScope.fromMap(Map<String, dynamic> map) {
    return PermissionScope(
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

