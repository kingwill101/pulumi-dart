import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_key_args.dart';
import 'private_key_state.dart';

class PrivateKey extends pulumi.CustomResource {
  /// Name of the algorithm to use when generating the private key. Currently-supported values are: `RSA`, `ECDSA`, `ED25519`.
  late final pulumi.Output<String> algorithm;

  /// When `algorithm` is `ECDSA`, the name of the elliptic curve to use. Currently-supported values are: `P224`, `P256`, `P384`, `P521`. (default: `P224`).
  late final pulumi.Output<String> ecdsaCurve;

  /// Private key data in [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format.
  late final pulumi.Output<String> privateKeyOpenssh;

  /// Private key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  late final pulumi.Output<String> privateKeyPem;

  /// Private key data in [PKCS#8 PEM (RFC 5208)](https://datatracker.ietf.org/doc/html/rfc5208) format.
  late final pulumi.Output<String> privateKeyPemPkcs8;

  /// The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:...`. Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the ECDSA P224 limitations.
  late final pulumi.Output<String> publicKeyFingerprintMd5;

  /// The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:...`. Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the ECDSA P224 limitations.
  late final pulumi.Output<String> publicKeyFingerprintSha256;

  /// The public key data in ["Authorized Keys"](https://www.ssh.com/academy/ssh/authorized_keys/openssh#format-of-the-authorized-keys-file) format. This is not populated for `ECDSA` with curve `P224`, as it is not supported. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  late final pulumi.Output<String> publicKeyOpenssh;

  /// Public key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  late final pulumi.Output<String> publicKeyPem;

  /// When `algorithm` is `RSA`, the size of the generated RSA key, in bits (default: `2048`).
  late final pulumi.Output<int> rsaBits;

  /// Creates a new [PrivateKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateKey]. {@macro pulumi_index_private_key_private_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateKey(
    String name, {
    PrivateKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'tls:index/privateKey:PrivateKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    algorithm = registerOutput<String>('algorithm');
    ecdsaCurve = registerOutput<String>('ecdsaCurve');
    privateKeyOpenssh = registerOutput<String>('privateKeyOpenssh');
    privateKeyPem = registerOutput<String>('privateKeyPem');
    privateKeyPemPkcs8 = registerOutput<String>('privateKeyPemPkcs8');
    publicKeyFingerprintMd5 = registerOutput<String>('publicKeyFingerprintMd5');
    publicKeyFingerprintSha256 = registerOutput<String>(
      'publicKeyFingerprintSha256',
    );
    publicKeyOpenssh = registerOutput<String>('publicKeyOpenssh');
    publicKeyPem = registerOutput<String>('publicKeyPem');
    rsaBits = registerOutput<int>('rsaBits');
  }

  /// Gets an existing [PrivateKey] resource's state with the given [name] and [id].
  static PrivateKey get(
    String name,
    pulumi.Input<String> id, {
    PrivateKeyState? state,
  }) {
    return PrivateKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'tls:index/privateKey:PrivateKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    algorithm = registerOutput<String>('algorithm');
    ecdsaCurve = registerOutput<String>('ecdsaCurve');
    privateKeyOpenssh = registerOutput<String>('privateKeyOpenssh');
    privateKeyPem = registerOutput<String>('privateKeyPem');
    privateKeyPemPkcs8 = registerOutput<String>('privateKeyPemPkcs8');
    publicKeyFingerprintMd5 = registerOutput<String>('publicKeyFingerprintMd5');
    publicKeyFingerprintSha256 = registerOutput<String>(
      'publicKeyFingerprintSha256',
    );
    publicKeyOpenssh = registerOutput<String>('publicKeyOpenssh');
    publicKeyPem = registerOutput<String>('publicKeyPem');
    rsaBits = registerOutput<int>('rsaBits');
  }
}
