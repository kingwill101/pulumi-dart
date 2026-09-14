// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroupRoleManagementPolicy.
class GetGroupRoleManagementPolicyResult {
  /// (String) The description of this policy.
  final String? description;
  /// (String) The display name of this policy.
  final String? displayName;
  final String? groupId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? roleId;

  /// Creates a new [GetGroupRoleManagementPolicyResult].
  /// [description] (String) The description of this policy.
  /// [displayName] (String) The display name of this policy.
  /// [groupId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [roleId] Optional.
  const GetGroupRoleManagementPolicyResult({
    this.description,
    this.displayName,
    this.groupId,
    this.id,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'groupId': ?groupId,
      'id': ?id,
      'roleId': ?roleId,
    };
  }

  factory GetGroupRoleManagementPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetGroupRoleManagementPolicyResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
