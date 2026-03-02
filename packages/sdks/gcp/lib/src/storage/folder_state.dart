// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  /// The name of the bucket that contains the folder.
  final pulumi.Input<String>? bucket;
  /// The timestamp at which this folder was created.
  final pulumi.Input<String>? createTime;
  /// If set to true, items within folder if any will be force destroyed.
  final pulumi.Input<bool>? forceDestroy;
  /// The metadata generation of the folder.
  final pulumi.Input<String>? metageneration;
  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  final pulumi.Input<String>? name;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The timestamp at which this folder was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FolderState].
  /// [bucket] The name of the bucket that contains the folder.
  /// [createTime] The timestamp at which this folder was created.
  /// [forceDestroy] If set to true, items within folder if any will be force destroyed.
  /// [metageneration] The metadata generation of the folder.
  /// [name] The name of the folder expressed as a path. Must include
  /// [selfLink] The URI of the created resource.
  /// [updateTime] The timestamp at which this folder was most recently updated.
  FolderState({
    this.bucket,
    this.createTime,
    this.forceDestroy,
    this.metageneration,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'createTime': ?createTime,
      'forceDestroy': ?forceDestroy,
      'metageneration': ?metageneration,
      'name': ?name,
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory FolderState.fromMap(Map<String, dynamic> map) {
    return FolderState(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      metageneration: map['metageneration'] == null ? null : (map['metageneration']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

