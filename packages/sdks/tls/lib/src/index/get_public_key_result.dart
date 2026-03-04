// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPublicKey.
class GetPublicKeyResult {
  /// The name of the algorithm used by the given private key. Possible values are: `RSA`, `ECDSA`, `ED25519`.
  final String algorithm;

  /// Unique identifier for this data source: hexadecimal representation of the SHA1 checksum of the data source.
  final String id;

  /// The private key (in  [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format) to extract the public key from. This is *mutually exclusive* with `private_key_pem`. Currently-supported algorithms for keys are: `RSA`, `ECDSA`, `ED25519`.
  final String? privateKeyOpenssh;

  /// The private key (in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format) to extract the public key from. This is *mutually exclusive* with `private_key_openssh`. Currently-supported algorithms for keys are: `RSA`, `ECDSA`, `ED25519`.
  final String? privateKeyPem;

  /// The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:...`. Only available if the selected private key format is compatible, as per the rules for `public_key_openssh` and ECDSA P224 limitations.
  final String publicKeyFingerprintMd5;

  /// The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:...`. Only available if the selected private key format is compatible, as per the rules for `public_key_openssh` and ECDSA P224 limitations.
  final String publicKeyFingerprintSha256;

  /// The public key, in  [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format. This is also known as ['Authorized Keys'](https://www.ssh.com/academy/ssh/authorized_keys/openssh#format-of-the-authorized-keys-file) format. This is not populated for `ECDSA` with curve `P224`, as it is not supported. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final String publicKeyOpenssh;

  /// The public key, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final String publicKeyPem;

  /// Creates a new [GetPublicKeyResult].
  /// [algorithm] The name of the algorithm used by the given private key. Possible values are: `RSA`, `ECDSA`, `ED25519`.
  /// [id] Unique identifier for this data source: hexadecimal representation of the SHA1 checksum of the data source.
  /// [privateKeyOpenssh] The private key (in  [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format) to extract the public key from. This is *mutually exclusive* with `private_key_pem`. Currently-supported algorithms for keys are: `RSA`, `ECDSA`, `ED25519`.
  /// [privateKeyPem] The private key (in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format) to extract the public key from. This is *mutually exclusive* with `private_key_openssh`. Currently-supported algorithms for keys are: `RSA`, `ECDSA`, `ED25519`.
  /// [publicKeyFingerprintMd5] The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:...`. Only available if the selected private key format is compatible, as per the rules for `public_key_openssh` and ECDSA P224 limitations.
  /// [publicKeyFingerprintSha256] The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:...`. Only available if the selected private key format is compatible, as per the rules for `public_key_openssh` and ECDSA P224 limitations.
  /// [publicKeyOpenssh] The public key, in  [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format. This is also known as ['Authorized Keys'](https://www.ssh.com/academy/ssh/authorized_keys/openssh#format-of-the-authorized-keys-file) format. This is not populated for `ECDSA` with curve `P224`, as it is not supported. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  /// [publicKeyPem] The public key, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  GetPublicKeyResult({
    required this.algorithm,
    required this.id,
    this.privateKeyOpenssh,
    this.privateKeyPem,
    required this.publicKeyFingerprintMd5,
    required this.publicKeyFingerprintSha256,
    required this.publicKeyOpenssh,
    required this.publicKeyPem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'id': id,
      'privateKeyOpenssh': ?privateKeyOpenssh,
      'privateKeyPem': ?privateKeyPem,
      'publicKeyFingerprintMd5': publicKeyFingerprintMd5,
      'publicKeyFingerprintSha256': publicKeyFingerprintSha256,
      'publicKeyOpenssh': publicKeyOpenssh,
      'publicKeyPem': publicKeyPem,
    };
  }

  factory GetPublicKeyResult.fromMap(Map<String, dynamic> map) {
    return GetPublicKeyResult(
      algorithm: map['algorithm'] as String,
      id: map['id'] as String,
      privateKeyOpenssh: (() {
        final guardedValue = map['privateKeyOpenssh'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      privateKeyPem: (() {
        final guardedValue = map['privateKeyPem'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      publicKeyFingerprintMd5: map['publicKeyFingerprintMd5'] as String,
      publicKeyFingerprintSha256: map['publicKeyFingerprintSha256'] as String,
      publicKeyOpenssh: map['publicKeyOpenssh'] as String,
      publicKeyPem: map['publicKeyPem'] as String,
    );
  }
}
