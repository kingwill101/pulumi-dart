// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_request_subject.dart';

/// Input properties used for looking up and filtering CertRequest resources.
class CertRequestState {
  /// The certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final pulumi.Input<String>? certRequestPem;
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? dnsNames;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? ipAddresses;
  /// Name of the algorithm used when generating the private key provided in `private_key_pem`.
  final pulumi.Input<String>? keyAlgorithm;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the `file` interpolation function.
  final pulumi.Input<String>? privateKeyPem;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  final pulumi.Input<CertRequestSubject>? subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? uris;

  /// Creates a new [CertRequestState].
  /// [certRequestPem] The certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  /// [dnsNames] List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  /// [ipAddresses] List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  /// [keyAlgorithm] Name of the algorithm used when generating the private key provided in `private_key_pem`.
  /// [privateKeyPem] Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the `file` interpolation function.
  /// [subject] The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  /// [uris] List of URIs for which a certificate is being requested (i.e. certificate subjects).
  CertRequestState({
    pulumi.Output<String>? certRequestPem,
    pulumi.Output<List<String>>? dnsNames,
    pulumi.Output<List<String>>? ipAddresses,
    pulumi.Output<String>? keyAlgorithm,
    pulumi.Output<String>? privateKeyPem,
    pulumi.Output<CertRequestSubject>? subject,
    pulumi.Output<List<String>>? uris,
  }) :
      certRequestPem = pulumi.Input.asOptionalInput<String>(certRequestPem),
      dnsNames = pulumi.Input.asOptionalInput<List<String>>(dnsNames),
      ipAddresses = pulumi.Input.asOptionalInput<List<String>>(ipAddresses),
      keyAlgorithm = pulumi.Input.asOptionalInput<String>(keyAlgorithm),
      privateKeyPem = pulumi.Input.asOptionalInput<String>(privateKeyPem),
      subject = pulumi.Input.asOptionalInput<CertRequestSubject>(subject),
      uris = pulumi.Input.asOptionalInput<List<String>>(uris);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certRequestPem': ?certRequestPem,
      'dnsNames': ?dnsNames,
      'ipAddresses': ?ipAddresses,
      'keyAlgorithm': ?keyAlgorithm,
      'privateKeyPem': ?privateKeyPem,
      'subject': ?pulumi.Input.mapOptionalInputValue<CertRequestSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'uris': ?uris,
    };
  }

  factory CertRequestState.fromMap(Map<String, dynamic> map) {
    return CertRequestState(
      certRequestPem: map['certRequestPem'] == null ? null : pulumi.Output.create<String>(map['certRequestPem'] as String),
      dnsNames: map['dnsNames'] == null ? null : pulumi.Output.create<List<String>>((map['dnsNames'] as List).cast<String>()),
      ipAddresses: map['ipAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipAddresses'] as List).cast<String>()),
      keyAlgorithm: map['keyAlgorithm'] == null ? null : pulumi.Output.create<String>(map['keyAlgorithm'] as String),
      privateKeyPem: map['privateKeyPem'] == null ? null : pulumi.Output.create<String>(map['privateKeyPem'] as String),
      subject: map['subject'] == null ? null : pulumi.Output.create<CertRequestSubject>(CertRequestSubject.fromMap((map['subject'] as Map).cast<String, dynamic>())),
      uris: map['uris'] == null ? null : pulumi.Output.create<List<String>>((map['uris'] as List).cast<String>()),
    );
  }
}

