// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_public_key_get_public_key_args_doc}
/// Arguments for getPublicKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_public_key_get_public_key_args_doc}
class GetPublicKeyArgs {
  /// The private key (in  [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format) to extract the public key from. This is *mutually exclusive* with `privateKeyPem`. Currently-supported algorithms for keys are: `RSA`, `ECDSA`, `ED25519`.
  final pulumi.Input<String>? privateKeyOpenssh;
  /// The private key (in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format) to extract the public key from. This is *mutually exclusive* with `privateKeyOpenssh`. Currently-supported algorithms for keys are: `RSA`, `ECDSA`, `ED25519`.
  final pulumi.Input<String>? privateKeyPem;

  /// Creates a new [GetPublicKeyArgs].
  /// [privateKeyOpenssh] The private key (in  [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format) to extract the public key from. This is *mutually exclusive* with `privateKeyPem`. Currently-supported algorithms for keys are: `RSA`, `ECDSA`, `ED25519`.
  /// [privateKeyPem] The private key (in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format) to extract the public key from. This is *mutually exclusive* with `privateKeyOpenssh`. Currently-supported algorithms for keys are: `RSA`, `ECDSA`, `ED25519`.
  const GetPublicKeyArgs({
    this.privateKeyOpenssh,
    this.privateKeyPem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKeyOpenssh': ?privateKeyOpenssh,
      'privateKeyPem': ?privateKeyPem,
    };
  }

  factory GetPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicKeyArgs(
      privateKeyOpenssh: (() { final guardedValue = map['privateKeyOpenssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPem: (() { final guardedValue = map['privateKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
