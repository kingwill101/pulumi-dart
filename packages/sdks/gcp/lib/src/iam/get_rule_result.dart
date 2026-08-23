// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRule.
class GetRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// specifies the list of one or more permissions to include in the custom role, such as - `iam.roles.get`
  final List<String> includedPermissions;
  final String name;
  /// indicates the stage of a role in the launch lifecycle, such as `GA`, `BETA` or `ALPHA`.
  final String stage;
  /// is a friendly title for the role, such as "Role Viewer"
  final String title;

  /// Creates a new [GetRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includedPermissions] specifies the list of one or more permissions to include in the custom role, such as - `iam.roles.get`
  /// [name] Required.
  /// [stage] indicates the stage of a role in the launch lifecycle, such as `GA`, `BETA` or `ALPHA`.
  /// [title] is a friendly title for the role, such as "Role Viewer"
  const GetRuleResult({
    required this.id,
    required this.includedPermissions,
    required this.name,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'includedPermissions': includedPermissions,
      'name': name,
      'stage': stage,
      'title': title,
    };
  }

  factory GetRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRuleResult(
      id: map['id'] as String,
      includedPermissions: (map['includedPermissions'] as List).cast<String>(),
      name: map['name'] as String,
      stage: map['stage'] as String,
      title: map['title'] as String,
    );
  }
}
