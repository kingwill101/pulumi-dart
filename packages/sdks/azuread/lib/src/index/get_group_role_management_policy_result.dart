// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroupRoleManagementPolicy.
class GetGroupRoleManagementPolicyResult {
  /// (String) The description of this policy.
  final String description;

  /// (String) The display name of this policy.
  final String displayName;
  final String groupId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String roleId;

  /// Creates a new [GetGroupRoleManagementPolicyResult].
  /// [description] (String) The description of this policy.
  /// [displayName] (String) The display name of this policy.
  /// [groupId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [roleId] Required.
  GetGroupRoleManagementPolicyResult({
    required this.description,
    required this.displayName,
    required this.groupId,
    required this.id,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'groupId': groupId,
      'id': id,
      'roleId': roleId,
    };
  }

  factory GetGroupRoleManagementPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetGroupRoleManagementPolicyResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      roleId: map['roleId'] as String,
    );
  }
}
