// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFoldersFolder {
  /// The timestamp of when the folder was created
  final pulumi.Input<String> createTime;
  /// The timestamp of when the folder was requested to be deleted (if applicable)
  final pulumi.Input<String> deleteTime;
  /// The display name of the folder
  final pulumi.Input<String> displayName;
  /// Entity tag identifier of the folder
  final pulumi.Input<String> etag;
  /// The id of the folder
  final pulumi.Input<String> name;
  /// The parent id of the folder
  final pulumi.Input<String> parent;
  /// The lifecycle state of the folder
  final pulumi.Input<String> state;
  /// The timestamp of when the folder was last modified
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetFoldersFolder].
  /// [createTime] The timestamp of when the folder was created
  /// [deleteTime] The timestamp of when the folder was requested to be deleted (if applicable)
  /// [displayName] The display name of the folder
  /// [etag] Entity tag identifier of the folder
  /// [name] The id of the folder
  /// [parent] The parent id of the folder
  /// [state] The lifecycle state of the folder
  /// [updateTime] The timestamp of when the folder was last modified
  const GetFoldersFolder({
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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deleteTime: pulumi.Input.fromValue(map['deleteTime'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
