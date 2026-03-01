// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_managed_folder_iam_policy_args_doc}
/// Arguments for getManagedFolderIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_managed_folder_iam_policy_args_doc}
class GetManagedFolderIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> managedFolder;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetManagedFolderIamPolicyArgs].
  /// [bucket] Required.
  /// [managedFolder] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [userProject] Optional.
  GetManagedFolderIamPolicyArgs({
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> managedFolder,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      managedFolder = pulumi.Input.asInput<String>(managedFolder),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'managedFolder': managedFolder,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'userProject': ?userProject,
    };
  }

  factory GetManagedFolderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderIamPolicyArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      managedFolder: pulumi.Output.create<String>(map['managedFolder'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      userProject: map['userProject'] == null ? null : pulumi.Output.create<String>(map['userProject'] as String),
    );
  }
}

