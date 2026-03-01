import 'package:pulumi/pulumi.dart' as pulumi;
import 'locally_signed_cert_args.dart';
import 'locally_signed_cert_state.dart';

class LocallySignedCert extends pulumi.CustomResource {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  late final pulumi.Output<List<String>> allowedUses;
  /// Certificate data of the Certificate Authority (CA) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  late final pulumi.Output<String> caCertPem;
  /// Name of the algorithm used when generating the private key provided in `ca_private_key_pem`.
  late final pulumi.Output<String> caKeyAlgorithm;
  /// Private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  late final pulumi.Output<String> caPrivateKeyPem;
  /// Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  late final pulumi.Output<String> certPem;
  /// Certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  late final pulumi.Output<String> certRequestPem;
  late final pulumi.Output<int> earlyRenewalHours;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  late final pulumi.Output<bool> isCaCertificate;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  late final pulumi.Output<int> maxPathLength;
  /// Is the certificate either expired (i.e. beyond the `validity_period_hours`) or ready for an early renewal (i.e. within the `early_renewal_hours`)?
  late final pulumi.Output<bool> readyForRenewal;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  late final pulumi.Output<bool> setSubjectKeyId;
  /// The time until which the certificate is invalid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  late final pulumi.Output<String> validityEndTime;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  late final pulumi.Output<int> validityPeriodHours;
  /// The time after which the certificate is valid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  late final pulumi.Output<String> validityStartTime;

  /// Creates a new [LocallySignedCert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocallySignedCert]. {@macro pulumi_index_locally_signed_cert_locally_signed_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocallySignedCert(
    String name, {
    LocallySignedCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/locallySignedCert:LocallySignedCert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedUses = registerOutput<List<String>>('allowedUses');
    this.caCertPem = registerOutput<String>('caCertPem');
    this.caKeyAlgorithm = registerOutput<String>('caKeyAlgorithm');
    this.caPrivateKeyPem = registerOutput<String>('caPrivateKeyPem');
    this.certPem = registerOutput<String>('certPem');
    this.certRequestPem = registerOutput<String>('certRequestPem');
    this.earlyRenewalHours = registerOutput<int>('earlyRenewalHours');
    this.isCaCertificate = registerOutput<bool>('isCaCertificate');
    this.maxPathLength = registerOutput<int>('maxPathLength');
    this.readyForRenewal = registerOutput<bool>('readyForRenewal');
    this.setSubjectKeyId = registerOutput<bool>('setSubjectKeyId');
    this.validityEndTime = registerOutput<String>('validityEndTime');
    this.validityPeriodHours = registerOutput<int>('validityPeriodHours');
    this.validityStartTime = registerOutput<String>('validityStartTime');
  }

  /// Gets an existing [LocallySignedCert] resource's state with the given [name] and [id].
  static LocallySignedCert get(
    String name,
    pulumi.Input<String> id, {
    LocallySignedCertState? state,
  }) {
    return LocallySignedCert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocallySignedCert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/locallySignedCert:LocallySignedCert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedUses = registerOutput<List<String>>('allowedUses');
    this.caCertPem = registerOutput<String>('caCertPem');
    this.caKeyAlgorithm = registerOutput<String>('caKeyAlgorithm');
    this.caPrivateKeyPem = registerOutput<String>('caPrivateKeyPem');
    this.certPem = registerOutput<String>('certPem');
    this.certRequestPem = registerOutput<String>('certRequestPem');
    this.earlyRenewalHours = registerOutput<int>('earlyRenewalHours');
    this.isCaCertificate = registerOutput<bool>('isCaCertificate');
    this.maxPathLength = registerOutput<int>('maxPathLength');
    this.readyForRenewal = registerOutput<bool>('readyForRenewal');
    this.setSubjectKeyId = registerOutput<bool>('setSubjectKeyId');
    this.validityEndTime = registerOutput<String>('validityEndTime');
    this.validityPeriodHours = registerOutput<int>('validityPeriodHours');
    this.validityStartTime = registerOutput<String>('validityStartTime');
  }
}
