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
    required this.bucket,
    required this.managedFolder,
    this.optionsRequestedPolicyVersion,
    this.userProject,
  });

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
      bucket: (map['bucket'] as String).input(),
      managedFolder: (map['managedFolder'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      userProject: map['userProject'] == null ? null : (map['userProject']! as String).input(),
    );
  }
}

