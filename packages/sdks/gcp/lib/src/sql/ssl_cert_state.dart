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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [expirationTime] The time when the certificate expires in RFC 3339 format,
  /// [instance] The name of the Cloud SQL instance. Changing this
  /// [privateKey] The private key associated with the client certificate.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [serverCaCert] The CA cert of the server this client cert was generated from.
  /// [sha1Fingerprint] The SHA1 Fingerprint of the certificate.
  const SslCertState({
    this.cert,
    this.certSerialNumber,
    this.commonName,
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certSerialNumber: (() { final guardedValue = map['certSerialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCaCert: (() { final guardedValue = map['serverCaCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha1Fingerprint: (() { final guardedValue = map['sha1Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
