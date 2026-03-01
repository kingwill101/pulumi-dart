// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_crypto_key_iam_policy_get_crypto_key_iam_policy_args_doc}
/// Arguments for getCryptoKeyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_kms_get_crypto_key_iam_policy_get_crypto_key_iam_policy_args_doc}
class GetCryptoKeyIamPolicyArgs {
  /// The crypto key ID, in the form
  final pulumi.Input<String> cryptoKeyId;

  /// Creates a new [GetCryptoKeyIamPolicyArgs].
  /// [cryptoKeyId] The crypto key ID, in the form
  GetCryptoKeyIamPolicyArgs({
    required pulumi.Output<String> cryptoKeyId,
  }) :
      cryptoKeyId = pulumi.Input.asInput<String>(cryptoKeyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyId': cryptoKeyId,
    };
  }

  factory GetCryptoKeyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyIamPolicyArgs(
      cryptoKeyId: pulumi.Output.create<String>(map['cryptoKeyId'] as String),
    );
  }
}

