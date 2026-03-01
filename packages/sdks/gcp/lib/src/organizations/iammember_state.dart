// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iammember_condition.dart';

/// Input properties used for looking up and filtering IAMMember resources.
class IAMMemberState {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMMemberCondition>? condition;
  /// (Computed) The etag of the organization's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String>? member;
  /// The organization id of the target organization.
  final pulumi.Input<String>? orgId;
  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `organizations/{{org_id}}/roles/{{role_id}}`.
  final pulumi.Input<String>? role;

  /// Creates a new [IAMMemberState].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [etag] (Computed) The etag of the organization's IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [orgId] The organization id of the target organization.
  /// [role] The role that should be applied. Only one
  IAMMemberState({
    pulumi.Output<IAMMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<IAMMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<IAMMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'member': ?member,
      'orgId': ?orgId,
      'role': ?role,
    };
  }

  factory IAMMemberState.fromMap(Map<String, dynamic> map) {
    return IAMMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<IAMMemberCondition>(IAMMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

