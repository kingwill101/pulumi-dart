// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_key_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_key_key_args_doc}
class KeyArgs {
  /// Arbitrary map of values that, when changed, will trigger a new key to be generated.
  final pulumi.Input<Map<String, String>>? keepers;
  /// The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
  /// Valid values are listed at
  /// [ServiceAccountPrivateKeyType](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts.keys#ServiceAccountKeyAlgorithm)
  /// (only used on create)
  final pulumi.Input<String>? keyAlgorithm;
  /// The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
  final pulumi.Input<String>? privateKeyType;
  /// Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with `public_key_type` and `private_key_type`.
  final pulumi.Input<String>? publicKeyData;
  /// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  final pulumi.Input<String>? publicKeyType;
  /// The Service account id of the Key. This can be a string in the format
  /// `{ACCOUNT}` or `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. If the `{ACCOUNT}`-only syntax is used, either
  /// the **full** email address of the service account or its name can be specified as a value, in which case the project will
  /// automatically be inferred from the account. Otherwise, if the `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`
  /// syntax is used, the `{ACCOUNT}` specified can be the full email address of the service account or the service account's
  /// unique id. Substituting `-` as a wildcard for the `{PROJECT_ID}` will infer the project from the account.
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [KeyArgs].
  /// [keepers] Arbitrary map of values that, when changed, will trigger a new key to be generated.
  /// [keyAlgorithm] The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
  /// [privateKeyType] The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
  /// [publicKeyData] Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with `public_key_type` and `private_key_type`.
  /// [publicKeyType] The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  /// [serviceAccountId] The Service account id of the Key. This can be a string in the format
  const KeyArgs({
    this.keepers,
    this.keyAlgorithm,
    this.privateKeyType,
    this.publicKeyData,
    this.publicKeyType,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'keyAlgorithm': ?keyAlgorithm,
      'privateKeyType': ?privateKeyType,
      'publicKeyData': ?publicKeyData,
      'publicKeyType': ?publicKeyType,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      keepers: (() { final guardedValue = map['keepers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      keyAlgorithm: (() { final guardedValue = map['keyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyType: (() { final guardedValue = map['privateKeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyData: (() { final guardedValue = map['publicKeyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyType: (() { final guardedValue = map['publicKeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountId: pulumi.Input.fromValue(map['serviceAccountId'] as String),
    );
  }
}

