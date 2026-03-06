// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmscrypto_key_get_kmscrypto_key_args_doc}
/// Arguments for getKMSCryptoKey.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmscrypto_key_get_kmscrypto_key_args_doc}
class GetKMSCryptoKeyArgs {
  /// The `id` of the Google Cloud Platform KeyRing to which the key belongs.
  final pulumi.Input<String> keyRing;
  /// The CryptoKey's name.
  /// A CryptoKey’s name belonging to the specified Google Cloud Platform KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> name;

  /// Creates a new [GetKMSCryptoKeyArgs].
  /// [keyRing] The `id` of the Google Cloud Platform KeyRing to which the key belongs.
  /// [name] The CryptoKey's name.
  const GetKMSCryptoKeyArgs({
    required this.keyRing,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyRing': keyRing,
      'name': name,
    };
  }

  factory GetKMSCryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyArgs(
      keyRing: pulumi.Input.fromValue(map['keyRing'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

