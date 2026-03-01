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
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? metageneration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? updateTime,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      metageneration = pulumi.Input.asOptionalInput<String>(metageneration),
      name = pulumi.Input.asOptionalInput<String>(name),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      metageneration: map['metageneration'] == null ? null : pulumi.Output.create<String>(map['metageneration'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

