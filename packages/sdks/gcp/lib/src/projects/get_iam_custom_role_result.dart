// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIamCustomRole.
class GetIamCustomRoleResult {
  final bool? deleted;
  final String? deletionPolicy;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final List<String>? permissions;
  final String? project;
  final String? roleId;
  final String? stage;
  final String? title;

  /// Creates a new [GetIamCustomRoleResult].
  /// [deleted] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [permissions] Optional.
  /// [project] Optional.
  /// [roleId] Optional.
  /// [stage] Optional.
  /// [title] Optional.
  const GetIamCustomRoleResult({
    this.deleted,
    this.deletionPolicy,
    this.description,
    this.id,
    this.name,
    this.permissions,
    this.project,
    this.roleId,
    this.stage,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': ?deleted,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'permissions': ?permissions,
      'project': ?project,
      'roleId': ?roleId,
      'stage': ?stage,
      'title': ?title,
    };
  }

  factory GetIamCustomRoleResult.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRoleResult(
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
