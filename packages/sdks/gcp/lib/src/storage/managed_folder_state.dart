// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedFolder resources.
class ManagedFolderState {
  /// The name of the bucket that contains the managed folder.
  final pulumi.Input<String>? bucket;
  /// The timestamp at which this managed folder was created.
  final pulumi.Input<String>? createTime;
  /// Allows the deletion of a managed folder even if contains
  /// objects. If a non-empty managed folder is deleted, any objects
  /// within the folder will remain in a simulated folder with the
  /// same name.
  final pulumi.Input<bool>? forceDestroy;
  /// The metadata generation of the managed folder.
  final pulumi.Input<String>? metageneration;
  /// The name of the managed folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`.
  final pulumi.Input<String>? name;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The timestamp at which this managed folder was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ManagedFolderState].
  /// [bucket] The name of the bucket that contains the managed folder.
  /// [createTime] The timestamp at which this managed folder was created.
  /// [forceDestroy] Allows the deletion of a managed folder even if contains
  /// [metageneration] The metadata generation of the managed folder.
  /// [name] The name of the managed folder expressed as a path. Must include
  /// [selfLink] The URI of the created resource.
  /// [updateTime] The timestamp at which this managed folder was most recently updated.
  ManagedFolderState({
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

  factory ManagedFolderState.fromMap(Map<String, dynamic> map) {
    return ManagedFolderState(
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

