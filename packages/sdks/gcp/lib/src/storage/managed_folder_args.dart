// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_managed_folder_managed_folder_args_doc}
/// The set of arguments for ManagedFolder.
/// {@endtemplate}
/// {@macro pulumi_storage_managed_folder_managed_folder_args_doc}
class ManagedFolderArgs {
  /// The name of the bucket that contains the managed folder.
  final pulumi.Input<String> bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Allows the deletion of a managed folder even if contains
  /// objects. If a non-empty managed folder is deleted, any objects
  /// within the folder will remain in a simulated folder with the
  /// same name.
  final pulumi.Input<bool?>? forceDestroy;
  /// The name of the managed folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`.
  final pulumi.Input<String?>? name;

  /// Creates a new [ManagedFolderArgs].
  /// [bucket] The name of the bucket that contains the managed folder.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [forceDestroy] Allows the deletion of a managed folder even if contains
  /// [name] The name of the managed folder expressed as a path. Must include
  const ManagedFolderArgs({
    required this.bucket,
    this.deletionPolicy,
    this.forceDestroy,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'deletionPolicy': ?deletionPolicy,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
    };
  }

  factory ManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
