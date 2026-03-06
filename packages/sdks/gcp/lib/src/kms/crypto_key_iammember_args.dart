// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_iammember_condition.dart';

/// {@template pulumi_kms_crypto_key_iammember_crypto_key_iammember_args_doc}
/// The set of arguments for CryptoKeyIAMMember.
/// {@endtemplate}
/// {@macro pulumi_kms_crypto_key_iammember_crypto_key_iammember_args_doc}
class CryptoKeyIAMMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyIAMMemberCondition>? condition;
  /// The crypto key ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}/{crypto_key_name}` or
  /// `{location_name}/{key_ring_name}/{crypto_key_name}`. In the second form,
  /// the provider's project setting will be used as a fallback.
  final pulumi.Input<String> cryptoKeyId;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, jane@example.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;
  /// The role that should be applied. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [CryptoKeyIAMMemberArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [cryptoKeyId] The crypto key ID, in the form
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Note that custom roles must be of the format
  const CryptoKeyIAMMemberArgs({
    this.condition,
    required this.cryptoKeyId,
    required this.member,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<CryptoKeyIAMMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'cryptoKeyId': cryptoKeyId,
      'member': member,
      'role': role,
    };
  }

  factory CryptoKeyIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyIAMMemberArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CryptoKeyIAMMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cryptoKeyId: pulumi.Input.fromValue(map['cryptoKeyId'] as String),
      member: pulumi.Input.fromValue(map['member'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

