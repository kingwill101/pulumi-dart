// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_ring_iammember_condition.dart';

/// Input properties used for looking up and filtering KeyRingIAMMember resources.
class KeyRingIAMMemberState {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<KeyRingIAMMemberCondition>? condition;
  /// (Computed) The etag of the key ring's IAM policy.
  final pulumi.Input<String>? etag;
  /// The key ring ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}` or
  /// `{location_name}/{key_ring_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String>? keyRingId;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String>? member;
  /// The role that should be applied. Only one
  /// `gcp.kms.KeyRingIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [KeyRingIAMMemberState].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [etag] (Computed) The etag of the key ring's IAM policy.
  /// [keyRingId] The key ring ID, in the form
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  KeyRingIAMMemberState({
    pulumi.Output<KeyRingIAMMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? keyRingId,
    pulumi.Output<String>? member,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<KeyRingIAMMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      keyRingId = pulumi.Input.asOptionalInput<String>(keyRingId),
      member = pulumi.Input.asOptionalInput<String>(member),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<KeyRingIAMMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'keyRingId': ?keyRingId,
      'member': ?member,
      'role': ?role,
    };
  }

  factory KeyRingIAMMemberState.fromMap(Map<String, dynamic> map) {
    return KeyRingIAMMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<KeyRingIAMMemberCondition>(KeyRingIAMMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      keyRingId: map['keyRingId'] == null ? null : pulumi.Output.create<String>(map['keyRingId'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

