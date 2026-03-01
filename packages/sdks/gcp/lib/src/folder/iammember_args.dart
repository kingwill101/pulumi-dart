// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iammember_condition.dart';

/// {@template pulumi_folder_i_ammember_iammember_args_doc}
/// The set of arguments for IAMMember.
/// {@endtemplate}
/// {@macro pulumi_folder_i_ammember_iammember_args_doc}
class IAMMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMMemberCondition>? condition;
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;
  /// The role that should be applied. Only one
  /// `gcp.folder.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `organizations/{{org_id}}/roles/{{role_id}}`.
  final pulumi.Input<String> role;

  /// Creates a new [IAMMemberArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [folder] The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  IAMMemberArgs({
    pulumi.Output<IAMMemberCondition>? condition,
    required pulumi.Output<String> folder,
    required pulumi.Output<String> member,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<IAMMemberCondition>(condition),
      folder = pulumi.Input.asInput<String>(folder),
      member = pulumi.Input.asInput<String>(member),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<IAMMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'folder': folder,
      'member': member,
      'role': role,
    };
  }

  factory IAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<IAMMemberCondition>(IAMMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      folder: pulumi.Output.create<String>(map['folder'] as String),
      member: pulumi.Output.create<String>(map['member'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

