// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iammember_condition.dart';

/// Input properties used for looking up and filtering InstanceIAMMember resources.
class InstanceIAMMemberState {
  final pulumi.Input<InstanceIAMMemberCondition>? condition;
  /// (Computed) The etag of the instance's IAM policy.
  final pulumi.Input<String>? etag;
  /// The name of the instance.
  final pulumi.Input<String>? instance;
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
  final pulumi.Input<String>? member;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.spanner.InstanceIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [InstanceIAMMemberState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the instance's IAM policy.
  /// [instance] The name of the instance.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [role] The role that should be applied. Only one
  InstanceIAMMemberState({
    pulumi.Output<InstanceIAMMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<InstanceIAMMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIAMMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'instance': ?instance,
      'member': ?member,
      'project': ?project,
      'role': ?role,
    };
  }

  factory InstanceIAMMemberState.fromMap(Map<String, dynamic> map) {
    return InstanceIAMMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<InstanceIAMMemberCondition>(InstanceIAMMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

