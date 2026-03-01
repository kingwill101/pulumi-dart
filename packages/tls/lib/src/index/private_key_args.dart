// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_private_key_private_key_args_doc}
/// The set of arguments for PrivateKey.
/// {@endtemplate}
/// {@macro pulumi_index_private_key_private_key_args_doc}
class PrivateKeyArgs {
  /// Name of the algorithm to use when generating the private key. Currently-supported values are: `RSA`, `ECDSA`, `ED25519`.
  final pulumi.Input<String> algorithm;
  /// When `algorithm` is `ECDSA`, the name of the elliptic curve to use. Currently-supported values are: `P224`, `P256`, `P384`, `P521`. (default: `P224`).
  final pulumi.Input<String>? ecdsaCurve;
  /// When `algorithm` is `RSA`, the size of the generated RSA key, in bits (default: `2048`).
  final pulumi.Input<int>? rsaBits;

  /// Creates a new [PrivateKeyArgs].
  /// [algorithm] Name of the algorithm to use when generating the private key. Currently-supported values are: `RSA`, `ECDSA`, `ED25519`.
  /// [ecdsaCurve] When `algorithm` is `ECDSA`, the name of the elliptic curve to use. Currently-supported values are: `P224`, `P256`, `P384`, `P521`. (default: `P224`).
  /// [rsaBits] When `algorithm` is `RSA`, the size of the generated RSA key, in bits (default: `2048`).
  PrivateKeyArgs({
    required String algorithm,
    String? ecdsaCurve,
    int? rsaBits,
  }) :
      algorithm = pulumi.Input.asInput<String>(algorithm),
      ecdsaCurve = pulumi.Input.asOptionalInput<String>(ecdsaCurve),
      rsaBits = pulumi.Input.asOptionalInput<int>(rsaBits);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'ecdsaCurve': ?ecdsaCurve,
      'rsaBits': ?rsaBits,
    };
  }

  factory PrivateKeyArgs.fromMap(Map<String, dynamic> map) {
    return PrivateKeyArgs(
      algorithm: map['algorithm'] as String,
      ecdsaCurve: map['ecdsaCurve'] == null ? null : map['ecdsaCurve'] as String,
      rsaBits: map['rsaBits'] == null ? null : map['rsaBits'] as int,
    );
  }
}

