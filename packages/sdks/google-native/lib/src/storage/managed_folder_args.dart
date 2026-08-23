// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_managed_folder_args_doc}
/// The set of arguments for ManagedFolder.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_managed_folder_args_doc}
class ManagedFolderArgs {
  /// The name of the bucket containing this managed folder.
  final pulumi.Input<String> bucket;
  /// The creation time of the managed folder in RFC 3339 format.
  final pulumi.Input<String>? createTime;
  /// The ID of the managed folder, including the bucket name and managed folder name.
  final pulumi.Input<String>? id;
  /// The kind of item this is. For managed folders, this is always storage#managedFolder.
  final pulumi.Input<String>? kind;
  /// The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  final pulumi.Input<String>? metageneration;
  /// The name of the managed folder. Required if not specified by URL parameter.
  final pulumi.Input<String>? name;
  /// The link to this managed folder.
  final pulumi.Input<String>? selfLink;
  /// The last update time of the managed folder metadata in RFC 3339 format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ManagedFolderArgs].
  /// [bucket] The name of the bucket containing this managed folder.
  /// [createTime] The creation time of the managed folder in RFC 3339 format.
  /// [id] The ID of the managed folder, including the bucket name and managed folder name.
  /// [kind] The kind of item this is. For managed folders, this is always storage#managedFolder.
  /// [metageneration] The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  /// [name] The name of the managed folder. Required if not specified by URL parameter.
  /// [selfLink] The link to this managed folder.
  /// [updateTime] The last update time of the managed folder metadata in RFC 3339 format.
  const ManagedFolderArgs({
    required this.bucket,
    this.createTime,
    this.id,
    this.kind,
    this.metageneration,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'createTime': ?createTime,
      'id': ?id,
      'kind': ?kind,
      'metageneration': ?metageneration,
      'name': ?name,
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory ManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metageneration: (() { final guardedValue = map['metageneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
