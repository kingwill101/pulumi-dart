// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIamCustomRole.
class GetIamCustomRoleResult {
  final bool deleted;
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<String> permissions;
  final String? project;
  final String roleId;
  final String stage;
  final String title;

  /// Creates a new [GetIamCustomRoleResult].
  /// [deleted] Required.
  /// [description] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [permissions] Required.
  /// [project] Optional.
  /// [roleId] Required.
  /// [stage] Required.
  /// [title] Required.
  GetIamCustomRoleResult({
    required this.deleted,
    required this.description,
    required this.id,
    required this.name,
    required this.permissions,
    this.project,
    required this.roleId,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': deleted,
      'description': description,
      'id': id,
      'name': name,
      'permissions': permissions,
      'project': ?project,
      'roleId': roleId,
      'stage': stage,
      'title': title,
    };
  }

  factory GetIamCustomRoleResult.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRoleResult(
      deleted: map['deleted'] as bool,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      roleId: map['roleId'] as String,
      stage: map['stage'] as String,
      title: map['title'] as String,
    );
  }
}
