// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_folder_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_storage_folder_folder_args_doc}
class FolderArgs {
  /// The name of the bucket that contains the folder.
  final pulumi.Input<String> bucket;
  /// If set to true, items within folder if any will be force destroyed.
  final pulumi.Input<bool>? forceDestroy;
  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  final pulumi.Input<String>? name;

  /// Creates a new [FolderArgs].
  /// [bucket] The name of the bucket that contains the folder.
  /// [forceDestroy] If set to true, items within folder if any will be force destroyed.
  /// [name] The name of the folder expressed as a path. Must include
  FolderArgs({
    required this.bucket,
    this.forceDestroy,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      bucket: (map['bucket'] as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

