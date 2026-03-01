// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_iammember_condition.dart';

/// Input properties used for looking up and filtering CryptoKeyIAMMember resources.
class CryptoKeyIAMMemberState {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyIAMMemberCondition>? condition;
  /// The crypto key ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}/{crypto_key_name}` or
  /// `{location_name}/{key_ring_name}/{crypto_key_name}`. In the second form,
  /// the provider's project setting will be used as a fallback.
  final pulumi.Input<String>? cryptoKeyId;
  /// (Computed) The etag of the project's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, jane@example.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String>? member;
  /// The role that should be applied. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [CryptoKeyIAMMemberState].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [cryptoKeyId] The crypto key ID, in the form
  /// [etag] (Computed) The etag of the project's IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Note that custom roles must be of the format
  CryptoKeyIAMMemberState({
    pulumi.Output<CryptoKeyIAMMemberCondition>? condition,
    pulumi.Output<String>? cryptoKeyId,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<CryptoKeyIAMMemberCondition>(condition),
      cryptoKeyId = pulumi.Input.asOptionalInput<String>(cryptoKeyId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<CryptoKeyIAMMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'cryptoKeyId': ?cryptoKeyId,
      'etag': ?etag,
      'member': ?member,
      'role': ?role,
    };
  }

  factory CryptoKeyIAMMemberState.fromMap(Map<String, dynamic> map) {
    return CryptoKeyIAMMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<CryptoKeyIAMMemberCondition>(CryptoKeyIAMMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      cryptoKeyId: map['cryptoKeyId'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

