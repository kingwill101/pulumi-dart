// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_condition.dart';

/// {@template pulumi_bigtable_instance_iam_binding_instance_iam_binding_args_doc}
/// The set of arguments for InstanceIamBinding.
/// {@endtemplate}
/// {@macro pulumi_bigtable_instance_iam_binding_instance_iam_binding_args_doc}
class InstanceIamBindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding. Structure is documented below.
  final pulumi.Input<InstanceIamBindingCondition?>? condition;
  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For `gcp.bigtable.InstanceIamMember` or `gcp.bigtable.InstanceIamBinding`:
  final pulumi.Input<String> instance;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The project in which the instance belongs. If it
  /// is not provided, Terraform will use the provider default.
  final pulumi.Input<String?>? project;
  /// The role that should be applied. Only one
  /// `gcp.bigtable.InstanceIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIamBindingArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding. Structure is documented below.
  /// [instance] The name or relative resource id of the instance to manage IAM policies for.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the instance belongs. If it
  /// [role] The role that should be applied. Only one
  const InstanceIamBindingArgs({
    this.condition,
    required this.instance,
    required this.members,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'instance': instance,
      'members': members,
      'project': ?project,
      'role': role,
    };
  }

  factory InstanceIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
