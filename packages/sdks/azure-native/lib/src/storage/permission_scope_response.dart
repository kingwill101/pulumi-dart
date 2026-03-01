// ignore_for_file: unused_element, unnecessary_cast


class PermissionScopeResponse {
  /// The permissions for the local user. Possible values include: Read (r), Write (w), Delete (d), List (l), Create (c), Modify Ownership (o), and Modify Permissions (p).
  final String permissions;
  /// The name of resource, normally the container name or the file share name, used by the local user.
  final String resourceName;
  /// The service used by the local user, e.g. blob, file.
  final String service;

  /// Creates a new [PermissionScopeResponse].
  /// [permissions] The permissions for the local user. Possible values include: Read (r), Write (w), Delete (d), List (l), Create (c), Modify Ownership (o), and Modify Permissions (p).
  /// [resourceName] The name of resource, normally the container name or the file share name, used by the local user.
  /// [service] The service used by the local user, e.g. blob, file.
  PermissionScopeResponse({
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

  factory PermissionScopeResponse.fromMap(Map<String, dynamic> map) {
    return PermissionScopeResponse(
      permissions: map['permissions'] as String,
      resourceName: map['resourceName'] as String,
      service: map['service'] as String,
    );
  }
}

