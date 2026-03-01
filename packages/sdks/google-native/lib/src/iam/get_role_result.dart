// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRole.
class GetRoleResult {
  /// The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  final bool deleted;
  /// Optional. A human-readable description for the role.
  final String description;
  /// Used to perform a consistent read-modify-write.
  final String etag;
  /// The names of the permissions this role grants when bound in an IAM policy.
  final List<String> includedPermissions;
  /// The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  final String name;
  /// The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  final String stage;
  /// Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  final String title;

  /// Creates a new [GetRoleResult].
  /// [deleted] The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  /// [description] Optional. A human-readable description for the role.
  /// [etag] Used to perform a consistent read-modify-write.
  /// [includedPermissions] The names of the permissions this role grants when bound in an IAM policy.
  /// [name] The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  /// [stage] The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  /// [title] Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  GetRoleResult({
    required this.deleted,
    required this.description,
    required this.etag,
    required this.includedPermissions,
    required this.name,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': deleted,
      'description': description,
      'etag': etag,
      'includedPermissions': includedPermissions,
      'name': name,
      'stage': stage,
      'title': title,
    };
  }

  factory GetRoleResult.fromMap(Map<String, dynamic> map) {
    return GetRoleResult(
      deleted: map['deleted'] as bool,
      description: map['description'] as String,
      etag: map['etag'] as String,
      includedPermissions: (map['includedPermissions'] as List).cast<String>(),
      name: map['name'] as String,
      stage: map['stage'] as String,
      title: map['title'] as String,
    );
  }
}

