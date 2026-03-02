// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SslCert resources.
class SslCertState {
  /// The actual certificate data for this client certificate.
  final pulumi.Input<String>? cert;
  /// The serial number extracted from the certificate data.
  final pulumi.Input<String>? certSerialNumber;
  /// The common name to be used in the certificate to identify the
  /// client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a new resource to be created.
  final pulumi.Input<String>? commonName;
  /// The time when the certificate was created in RFC 3339 format,
  /// for example 2012-11-15T16:19:00.094Z.
  final pulumi.Input<String>? createTime;
  /// The time when the certificate expires in RFC 3339 format,
  /// for example 2012-11-15T16:19:00.094Z.
  final pulumi.Input<String>? expirationTime;
  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  final pulumi.Input<String>? instance;
  /// The private key associated with the client certificate.
  final pulumi.Input<String>? privateKey;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The CA cert of the server this client cert was generated from.
  final pulumi.Input<String>? serverCaCert;
  /// The SHA1 Fingerprint of the certificate.
  final pulumi.Input<String>? sha1Fingerprint;

  /// Creates a new [SslCertState].
  /// [cert] The actual certificate data for this client certificate.
  /// [certSerialNumber] The serial number extracted from the certificate data.
  /// [commonName] The common name to be used in the certificate to identify the
  /// [createTime] The time when the certificate was created in RFC 3339 format,
  /// [expirationTime] The time when the certificate expires in RFC 3339 format,
  /// [instance] The name of the Cloud SQL instance. Changing this
  /// [privateKey] The private key associated with the client certificate.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [serverCaCert] The CA cert of the server this client cert was generated from.
  /// [sha1Fingerprint] The SHA1 Fingerprint of the certificate.
  SslCertState({
    this.cert,
    this.certSerialNumber,
    this.commonName,
    this.createTime,
    this.expirationTime,
    this.instance,
    this.privateKey,
    this.project,
    this.serverCaCert,
    this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'certSerialNumber': ?certSerialNumber,
      'commonName': ?commonName,
      'createTime': ?createTime,
      'expirationTime': ?expirationTime,
      'instance': ?instance,
      'privateKey': ?privateKey,
      'project': ?project,
      'serverCaCert': ?serverCaCert,
      'sha1Fingerprint': ?sha1Fingerprint,
    };
  }

  factory SslCertState.fromMap(Map<String, dynamic> map) {
    return SslCertState(
      cert: map['cert'] == null ? null : (map['cert']! as String).input(),
      certSerialNumber: map['certSerialNumber'] == null ? null : (map['certSerialNumber']! as String).input(),
      commonName: map['commonName'] == null ? null : (map['commonName']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime']! as String).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serverCaCert: map['serverCaCert'] == null ? null : (map['serverCaCert']! as String).input(),
      sha1Fingerprint: map['sha1Fingerprint'] == null ? null : (map['sha1Fingerprint']! as String).input(),
    );
  }
}

