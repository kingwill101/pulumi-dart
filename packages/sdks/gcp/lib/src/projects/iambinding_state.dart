// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iambinding_condition.dart';

/// Input properties used for looking up and filtering IAMBinding resources.
class IAMBindingState {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMBindingCondition>? condition;
  /// (Computed) The etag of the project's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>>? members;
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.projects.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [IAMBindingState].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [etag] (Computed) The etag of the project's IAM policy.
  /// [members] Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// [project] The project id of the target project. This is not
  /// [role] The role that should be applied. Only one
  IAMBindingState({
    this.condition,
    this.etag,
    this.members,
    this.project,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<IAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'members': ?members,
      'project': ?project,
      'role': ?role,
    };
  }

  factory IAMBindingState.fromMap(Map<String, dynamic> map) {
    return IAMBindingState(
      condition: map['condition'] == null ? null : (IAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

