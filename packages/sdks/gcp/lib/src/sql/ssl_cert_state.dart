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
    pulumi.Output<String>? cert,
    pulumi.Output<String>? certSerialNumber,
    pulumi.Output<String>? commonName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? expirationTime,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serverCaCert,
    pulumi.Output<String>? sha1Fingerprint,
  }) :
      cert = pulumi.Input.asOptionalInput<String>(cert),
      certSerialNumber = pulumi.Input.asOptionalInput<String>(certSerialNumber),
      commonName = pulumi.Input.asOptionalInput<String>(commonName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      expirationTime = pulumi.Input.asOptionalInput<String>(expirationTime),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      project = pulumi.Input.asOptionalInput<String>(project),
      serverCaCert = pulumi.Input.asOptionalInput<String>(serverCaCert),
      sha1Fingerprint = pulumi.Input.asOptionalInput<String>(sha1Fingerprint);

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
      cert: map['cert'] == null ? null : pulumi.Output.create<String>(map['cert'] as String),
      certSerialNumber: map['certSerialNumber'] == null ? null : pulumi.Output.create<String>(map['certSerialNumber'] as String),
      commonName: map['commonName'] == null ? null : pulumi.Output.create<String>(map['commonName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      expirationTime: map['expirationTime'] == null ? null : pulumi.Output.create<String>(map['expirationTime'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serverCaCert: map['serverCaCert'] == null ? null : pulumi.Output.create<String>(map['serverCaCert'] as String),
      sha1Fingerprint: map['sha1Fingerprint'] == null ? null : pulumi.Output.create<String>(map['sha1Fingerprint'] as String),
    );
  }
}

