// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateKey resources.
class PrivateKeyState {
  /// Name of the algorithm to use when generating the private key. Currently-supported values are: `RSA`, `ECDSA`, `ED25519`.
  final pulumi.Input<String>? algorithm;
  /// When `algorithm` is `ECDSA`, the name of the elliptic curve to use. Currently-supported values are: `P224`, `P256`, `P384`, `P521`. (default: `P224`).
  final pulumi.Input<String>? ecdsaCurve;
  /// Private key data in [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format.
  final pulumi.Input<String>? privateKeyOpenssh;
  /// Private key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String>? privateKeyPem;
  /// Private key data in [PKCS#8 PEM (RFC 5208)](https://datatracker.ietf.org/doc/html/rfc5208) format.
  final pulumi.Input<String>? privateKeyPemPkcs8;
  /// The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:...`. Only available if the selected private key format is compatible, similarly to `publicKeyOpenssh` and the ECDSA P224 limitations.
  final pulumi.Input<String>? publicKeyFingerprintMd5;
  /// The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:...`. Only available if the selected private key format is compatible, similarly to `publicKeyOpenssh` and the ECDSA P224 limitations.
  final pulumi.Input<String>? publicKeyFingerprintSha256;
  /// The public key data in ["Authorized Keys"](https://www.ssh.com/academy/ssh/authorized_keys/openssh#format-of-the-authorized-keys-file) format. This is not populated for `ECDSA` with curve `P224`, as it is not supported. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final pulumi.Input<String>? publicKeyOpenssh;
  /// Public key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final pulumi.Input<String>? publicKeyPem;
  /// When `algorithm` is `RSA`, the size of the generated RSA key, in bits (default: `2048`).
  final pulumi.Input<int>? rsaBits;

  /// Creates a new [PrivateKeyState].
  /// [algorithm] Name of the algorithm to use when generating the private key. Currently-supported values are: `RSA`, `ECDSA`, `ED25519`.
  /// [ecdsaCurve] When `algorithm` is `ECDSA`, the name of the elliptic curve to use. Currently-supported values are: `P224`, `P256`, `P384`, `P521`. (default: `P224`).
  /// [privateKeyOpenssh] Private key data in [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format.
  /// [privateKeyPem] Private key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [privateKeyPemPkcs8] Private key data in [PKCS#8 PEM (RFC 5208)](https://datatracker.ietf.org/doc/html/rfc5208) format.
  /// [publicKeyFingerprintMd5] The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:...`. Only available if the selected private key format is compatible, similarly to `publicKeyOpenssh` and the ECDSA P224 limitations.
  /// [publicKeyFingerprintSha256] The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:...`. Only available if the selected private key format is compatible, similarly to `publicKeyOpenssh` and the ECDSA P224 limitations.
  /// [publicKeyOpenssh] The public key data in ["Authorized Keys"](https://www.ssh.com/academy/ssh/authorized_keys/openssh#format-of-the-authorized-keys-file) format. This is not populated for `ECDSA` with curve `P224`, as it is not supported. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  /// [publicKeyPem] Public key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  /// [rsaBits] When `algorithm` is `RSA`, the size of the generated RSA key, in bits (default: `2048`).
  const PrivateKeyState({
    this.algorithm,
    this.ecdsaCurve,
    this.privateKeyOpenssh,
    this.privateKeyPem,
    this.privateKeyPemPkcs8,
    this.publicKeyFingerprintMd5,
    this.publicKeyFingerprintSha256,
    this.publicKeyOpenssh,
    this.publicKeyPem,
    this.rsaBits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'ecdsaCurve': ?ecdsaCurve,
      'privateKeyOpenssh': ?privateKeyOpenssh,
      'privateKeyPem': ?privateKeyPem,
      'privateKeyPemPkcs8': ?privateKeyPemPkcs8,
      'publicKeyFingerprintMd5': ?publicKeyFingerprintMd5,
      'publicKeyFingerprintSha256': ?publicKeyFingerprintSha256,
      'publicKeyOpenssh': ?publicKeyOpenssh,
      'publicKeyPem': ?publicKeyPem,
      'rsaBits': ?rsaBits,
    };
  }

  factory PrivateKeyState.fromMap(Map<String, dynamic> map) {
    return PrivateKeyState(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecdsaCurve: (() { final guardedValue = map['ecdsaCurve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyOpenssh: (() { final guardedValue = map['privateKeyOpenssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPem: (() { final guardedValue = map['privateKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPemPkcs8: (() { final guardedValue = map['privateKeyPemPkcs8']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyFingerprintMd5: (() { final guardedValue = map['publicKeyFingerprintMd5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyFingerprintSha256: (() { final guardedValue = map['publicKeyFingerprintSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyOpenssh: (() { final guardedValue = map['publicKeyOpenssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyPem: (() { final guardedValue = map['publicKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaBits: (() { final guardedValue = map['rsaBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
