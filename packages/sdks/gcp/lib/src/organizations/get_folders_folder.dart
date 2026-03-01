// ignore_for_file: unused_element, unnecessary_cast


class GetFoldersFolder {
  /// The timestamp of when the folder was created
  final String createTime;
  /// The timestamp of when the folder was requested to be deleted (if applicable)
  final String deleteTime;
  /// The display name of the folder
  final String displayName;
  /// Entity tag identifier of the folder
  final String etag;
  /// The id of the folder
  final String name;
  /// The parent id of the folder
  final String parent;
  /// The lifecycle state of the folder
  final String state;
  /// The timestamp of when the folder was last modified
  final String updateTime;

  /// Creates a new [GetFoldersFolder].
  /// [createTime] The timestamp of when the folder was created
  /// [deleteTime] The timestamp of when the folder was requested to be deleted (if applicable)
  /// [displayName] The display name of the folder
  /// [etag] Entity tag identifier of the folder
  /// [name] The id of the folder
  /// [parent] The parent id of the folder
  /// [state] The lifecycle state of the folder
  /// [updateTime] The timestamp of when the folder was last modified
  GetFoldersFolder({
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.name,
    required this.parent,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'etag': etag,
      'name': name,
      'parent': parent,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetFoldersFolder.fromMap(Map<String, dynamic> map) {
    return GetFoldersFolder(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

