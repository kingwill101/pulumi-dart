import 'package:pulumi/pulumi.dart' as pulumi;
import 'self_signed_cert_args.dart';
import 'self_signed_cert_subject.dart';

class SelfSignedCert extends pulumi.CustomResource {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  late final pulumi.Output<List<String>> allowedUses;
  /// Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  late final pulumi.Output<String> certPem;
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> dnsNames;
  late final pulumi.Output<int> earlyRenewalHours;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> ipAddresses;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  late final pulumi.Output<bool> isCaCertificate;
  /// Name of the algorithm used when generating the private key provided in `private_key_pem`.
  late final pulumi.Output<String> keyAlgorithm;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  late final pulumi.Output<int> maxPathLength;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to.
  late final pulumi.Output<String> privateKeyPem;
  /// Is the certificate either expired (i.e. beyond the `validity_period_hours`) or ready for an early renewal (i.e. within the `early_renewal_hours`)?
  late final pulumi.Output<bool> readyForRenewal;
  /// Should the generated certificate include an [authority key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.1): for self-signed certificates this is the same value as the [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  late final pulumi.Output<bool> setAuthorityKeyId;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  late final pulumi.Output<bool> setSubjectKeyId;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  late final pulumi.Output<SelfSignedCertSubject?> subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> uris;
  /// The time until which the certificate is invalid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  late final pulumi.Output<String> validityEndTime;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  late final pulumi.Output<int> validityPeriodHours;
  /// The time after which the certificate is valid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  late final pulumi.Output<String> validityStartTime;

  /// Creates a new [SelfSignedCert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SelfSignedCert]. {@macro pulumi_index_self_signed_cert_self_signed_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SelfSignedCert(
    String name, {
    SelfSignedCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/selfSignedCert:SelfSignedCert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedUses = registerOutput<List<String>>('allowedUses');
    this.certPem = registerOutput<String>('certPem');
    this.dnsNames = registerOutput<List<String>?>('dnsNames');
    this.earlyRenewalHours = registerOutput<int>('earlyRenewalHours');
    this.ipAddresses = registerOutput<List<String>?>('ipAddresses');
    this.isCaCertificate = registerOutput<bool>('isCaCertificate');
    this.keyAlgorithm = registerOutput<String>('keyAlgorithm');
    this.maxPathLength = registerOutput<int>('maxPathLength');
    this.privateKeyPem = registerOutput<String>('privateKeyPem');
    this.readyForRenewal = registerOutput<bool>('readyForRenewal');
    this.setAuthorityKeyId = registerOutput<bool>('setAuthorityKeyId');
    this.setSubjectKeyId = registerOutput<bool>('setSubjectKeyId');
    this.subject = registerOutput<SelfSignedCertSubject?>('subject');
    this.uris = registerOutput<List<String>?>('uris');
    this.validityEndTime = registerOutput<String>('validityEndTime');
    this.validityPeriodHours = registerOutput<int>('validityPeriodHours');
    this.validityStartTime = registerOutput<String>('validityStartTime');
  }
}
