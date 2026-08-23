// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iambinding_condition.dart';

/// {@template pulumi_spanner_instance_iambinding_instance_iambinding_args_doc}
/// The set of arguments for InstanceIAMBinding.
/// {@endtemplate}
/// {@macro pulumi_spanner_instance_iambinding_instance_iambinding_args_doc}
class InstanceIAMBindingArgs {
  final pulumi.Input<InstanceIAMBindingCondition>? condition;
  /// The name of the instance.
  final pulumi.Input<String> instance;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **principal:{principal}**: Federated single identity. For example, principal://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/subject/ns/NAMESPACE/sa/SERVICEACCOUNT
  /// * **principalSet:{principalSet}**: Federated identity group. For example, principalSet://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/namespace/NAMESPACE
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.spanner.InstanceIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIAMBindingArgs].
  /// [condition] Optional.
  /// [instance] The name of the instance.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [role] The role that should be applied. Only one
  const InstanceIAMBindingArgs({
    this.condition,
    required this.instance,
    required this.members,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'instance': instance,
      'members': members,
      'project': ?project,
      'role': role,
    };
  }

  factory InstanceIAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIAMBindingArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceIAMBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
