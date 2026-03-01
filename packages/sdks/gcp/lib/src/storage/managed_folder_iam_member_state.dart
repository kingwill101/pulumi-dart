// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_folder_iam_member_condition.dart';

/// Input properties used for looking up and filtering ManagedFolderIamMember resources.
class ManagedFolderIamMemberState {
  /// The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? bucket;
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<ManagedFolderIamMemberCondition>? condition;
  /// (Computed) The etag of the IAM policy.
  final pulumi.Input<String>? etag;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? managedFolder;
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
  final pulumi.Input<String>? member;
  /// The role that should be applied. Only one
  /// `gcp.storage.ManagedFolderIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [ManagedFolderIamMemberState].
  /// [bucket] The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [managedFolder] Used to find the parent resource to bind the IAM policy to
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  ManagedFolderIamMemberState({
    pulumi.Output<String>? bucket,
    pulumi.Output<ManagedFolderIamMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? managedFolder,
    pulumi.Output<String>? member,
    pulumi.Output<String>? role,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      condition = pulumi.Input.asOptionalInput<ManagedFolderIamMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      managedFolder = pulumi.Input.asOptionalInput<String>(managedFolder),
      member = pulumi.Input.asOptionalInput<String>(member),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'condition': ?pulumi.Input.mapOptionalInputValue<ManagedFolderIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'managedFolder': ?managedFolder,
      'member': ?member,
      'role': ?role,
    };
  }

  factory ManagedFolderIamMemberState.fromMap(Map<String, dynamic> map) {
    return ManagedFolderIamMemberState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      condition: map['condition'] == null ? null : pulumi.Output.create<ManagedFolderIamMemberCondition>(ManagedFolderIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      managedFolder: map['managedFolder'] == null ? null : pulumi.Output.create<String>(map['managedFolder'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

