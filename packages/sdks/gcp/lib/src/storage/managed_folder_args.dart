// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_managed_folder_managed_folder_args_doc}
/// The set of arguments for ManagedFolder.
/// {@endtemplate}
/// {@macro pulumi_storage_managed_folder_managed_folder_args_doc}
class ManagedFolderArgs {
  /// The name of the bucket that contains the managed folder.
  final pulumi.Input<String> bucket;

  /// Allows the deletion of a managed folder even if contains
  /// objects. If a non-empty managed folder is deleted, any objects
  /// within the folder will remain in a simulated folder with the
  /// same name.
  final pulumi.Input<bool>? forceDestroy;

  /// The name of the managed folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`.
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedFolderArgs].
  /// [bucket] The name of the bucket that contains the managed folder.
  /// [forceDestroy] Allows the deletion of a managed folder even if contains
  /// [name] The name of the managed folder expressed as a path. Must include
  ManagedFolderArgs({required this.bucket, this.forceDestroy, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
    };
  }

  factory ManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
