// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// The full PEM-formatted trust chain
  /// between the certificate authority's certificate and your domain's TLS
  /// certificate. Only valid when type is `custom`.
  final pulumi.Input<String>? certificateChain;
  /// List of fully qualified domain names (FQDNs) for
  /// which the certificate will be issued. The domains must be managed using
  /// DigitalOcean's DNS. Only valid when type is `lets_encrypt`.
  final pulumi.Input<List<String>>? domains;
  /// The contents of a PEM-formatted public
  /// TLS certificate. Only valid when type is `custom`.
  final pulumi.Input<String>? leafCertificate;
  /// The name of the certificate for identification.
  final pulumi.Input<String>? name;
  /// The expiration date of the certificate
  final pulumi.Input<String>? notAfter;
  /// The contents of a PEM-formatted private-key
  /// corresponding to the SSL certificate. Only valid when type is `custom`.
  final pulumi.Input<String>? privateKey;
  /// The SHA-1 fingerprint of the certificate
  final pulumi.Input<String>? sha1Fingerprint;
  final pulumi.Input<String>? state;
  /// The type of certificate to provision. Can be either
  /// `custom` or `lets_encrypt`. Defaults to `custom`.
  final pulumi.Input<String>? type;
  /// The UUID of the certificate
  final pulumi.Input<String>? uuid;

  /// Creates a new [CertificateState].
  /// [certificateChain] The full PEM-formatted trust chain
  /// [domains] List of fully qualified domain names (FQDNs) for
  /// [leafCertificate] The contents of a PEM-formatted public
  /// [name] The name of the certificate for identification.
  /// [notAfter] The expiration date of the certificate
  /// [privateKey] The contents of a PEM-formatted private-key
  /// [sha1Fingerprint] The SHA-1 fingerprint of the certificate
  /// [state] Optional.
  /// [type] The type of certificate to provision. Can be either
  /// [uuid] The UUID of the certificate
  CertificateState({
    pulumi.Output<String>? certificateChain,
    pulumi.Output<List<String>>? domains,
    pulumi.Output<String>? leafCertificate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notAfter,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? sha1Fingerprint,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uuid,
  }) :
      certificateChain = pulumi.Input.asOptionalInput<String>(certificateChain),
      domains = pulumi.Input.asOptionalInput<List<String>>(domains),
      leafCertificate = pulumi.Input.asOptionalInput<String>(leafCertificate),
      name = pulumi.Input.asOptionalInput<String>(name),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      sha1Fingerprint = pulumi.Input.asOptionalInput<String>(sha1Fingerprint),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': ?certificateChain,
      'domains': ?domains,
      'leafCertificate': ?leafCertificate,
      'name': ?name,
      'notAfter': ?notAfter,
      'privateKey': ?privateKey,
      'sha1Fingerprint': ?sha1Fingerprint,
      'state': ?state,
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      certificateChain: map['certificateChain'] == null ? null : pulumi.Output.create<String>(map['certificateChain'] as String),
      domains: map['domains'] == null ? null : pulumi.Output.create<List<String>>((map['domains'] as List).cast<String>()),
      leafCertificate: map['leafCertificate'] == null ? null : pulumi.Output.create<String>(map['leafCertificate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notAfter: map['notAfter'] == null ? null : pulumi.Output.create<String>(map['notAfter'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      sha1Fingerprint: map['sha1Fingerprint'] == null ? null : pulumi.Output.create<String>(map['sha1Fingerprint'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

