// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFolder.
class GetFolderCloudresourcemanagerV2beta1Result {
  /// Timestamp when the Folder was created. Assigned by the server.
  final String createTime;
  /// The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  final String displayName;
  /// The lifecycle state of the folder. Updates to the lifecycle_state must be performed via DeleteFolder and UndeleteFolder.
  final String lifecycleState;
  /// The resource name of the Folder. Its format is `folders/{folder_id}`, for example: "folders/1234".
  final String name;
  /// The Folder's parent's resource name. Updates to the folder's parent must be performed via MoveFolder.
  final String parent;

  /// Creates a new [GetFolderCloudresourcemanagerV2beta1Result].
  /// [createTime] Timestamp when the Folder was created. Assigned by the server.
  /// [displayName] The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  /// [lifecycleState] The lifecycle state of the folder. Updates to the lifecycle_state must be performed via DeleteFolder and UndeleteFolder.
  /// [name] The resource name of the Folder. Its format is `folders/{folder_id}`, for example: "folders/1234".
  /// [parent] The Folder's parent's resource name. Updates to the folder's parent must be performed via MoveFolder.
  GetFolderCloudresourcemanagerV2beta1Result({
    required this.createTime,
    required this.displayName,
    required this.lifecycleState,
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'lifecycleState': lifecycleState,
      'name': name,
      'parent': parent,
    };
  }

  factory GetFolderCloudresourcemanagerV2beta1Result.fromMap(Map<String, dynamic> map) {
    return GetFolderCloudresourcemanagerV2beta1Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      lifecycleState: map['lifecycleState'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
    );
  }
}

