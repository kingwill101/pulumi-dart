// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroup.
class GetGroupVmmigrationV1alpha1Result {
  /// The create time timestamp.
  final String createTime;

  /// User-provided description of the group.
  final String description;

  /// Display name is a user defined name for this group which can be updated.
  final String displayName;

  /// Immutable. The target type of this group.
  final String migrationTargetType;

  /// The Group name.
  final String name;

  /// The update time timestamp.
  final String updateTime;

  /// Creates a new [GetGroupVmmigrationV1alpha1Result].
  /// [createTime] The create time timestamp.
  /// [description] User-provided description of the group.
  /// [displayName] Display name is a user defined name for this group which can be updated.
  /// [migrationTargetType] Immutable. The target type of this group.
  /// [name] The Group name.
  /// [updateTime] The update time timestamp.
  GetGroupVmmigrationV1alpha1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.migrationTargetType,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'migrationTargetType': migrationTargetType,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetGroupVmmigrationV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetGroupVmmigrationV1alpha1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      migrationTargetType: map['migrationTargetType'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
