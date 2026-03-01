// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_managed_folder_args_doc}
/// Arguments for getManagedFolder.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_managed_folder_args_doc}
class GetManagedFolderArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? ifMetagenerationMatch;
  final pulumi.Input<String>? ifMetagenerationNotMatch;
  final pulumi.Input<String> managedFolder;

  /// Creates a new [GetManagedFolderArgs].
  /// [bucket] Required.
  /// [ifMetagenerationMatch] Optional.
  /// [ifMetagenerationNotMatch] Optional.
  /// [managedFolder] Required.
  GetManagedFolderArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? ifMetagenerationMatch,
    pulumi.Output<String>? ifMetagenerationNotMatch,
    required pulumi.Output<String> managedFolder,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      ifMetagenerationMatch = pulumi.Input.asOptionalInput<String>(ifMetagenerationMatch),
      ifMetagenerationNotMatch = pulumi.Input.asOptionalInput<String>(ifMetagenerationNotMatch),
      managedFolder = pulumi.Input.asInput<String>(managedFolder);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'ifMetagenerationMatch': ?ifMetagenerationMatch,
      'ifMetagenerationNotMatch': ?ifMetagenerationNotMatch,
      'managedFolder': managedFolder,
    };
  }

  factory GetManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      ifMetagenerationMatch: map['ifMetagenerationMatch'] == null ? null : pulumi.Output.create<String>(map['ifMetagenerationMatch'] as String),
      ifMetagenerationNotMatch: map['ifMetagenerationNotMatch'] == null ? null : pulumi.Output.create<String>(map['ifMetagenerationNotMatch'] as String),
      managedFolder: pulumi.Output.create<String>(map['managedFolder'] as String),
    );
  }
}

