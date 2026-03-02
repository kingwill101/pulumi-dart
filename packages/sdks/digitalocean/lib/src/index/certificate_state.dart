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
    this.certificateChain,
    this.domains,
    this.leafCertificate,
    this.name,
    this.notAfter,
    this.privateKey,
    this.sha1Fingerprint,
    this.state,
    this.type,
    this.uuid,
  });

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
      certificateChain: map['certificateChain'] == null ? null : (map['certificateChain']! as String).input(),
      domains: map['domains'] == null ? null : ((map['domains']! as List).cast<String>()).input(),
      leafCertificate: map['leafCertificate'] == null ? null : (map['leafCertificate']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notAfter: map['notAfter'] == null ? null : (map['notAfter']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      sha1Fingerprint: map['sha1Fingerprint'] == null ? null : (map['sha1Fingerprint']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

