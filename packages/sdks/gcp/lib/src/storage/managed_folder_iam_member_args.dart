// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_folder_iam_member_condition.dart';

/// {@template pulumi_storage_managed_folder_iam_member_managed_folder_iam_member_args_doc}
/// The set of arguments for ManagedFolderIamMember.
/// {@endtemplate}
/// {@macro pulumi_storage_managed_folder_iam_member_managed_folder_iam_member_args_doc}
class ManagedFolderIamMemberArgs {
  /// The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> bucket;
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<ManagedFolderIamMemberCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> managedFolder;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  final pulumi.Input<String> member;
  /// The role that should be applied. Only one
  /// `gcp.storage.ManagedFolderIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [ManagedFolderIamMemberArgs].
  /// [bucket] The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [managedFolder] Used to find the parent resource to bind the IAM policy to
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  ManagedFolderIamMemberArgs({
    required this.bucket,
    this.condition,
    required this.managedFolder,
    required this.member,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'condition': ?pulumi.Input.mapOptionalInputValue<ManagedFolderIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'managedFolder': managedFolder,
      'member': member,
      'role': role,
    };
  }

  factory ManagedFolderIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderIamMemberArgs(
      bucket: (map['bucket'] as String).input(),
      condition: map['condition'] == null ? null : (ManagedFolderIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      managedFolder: (map['managedFolder'] as String).input(),
      member: (map['member'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

