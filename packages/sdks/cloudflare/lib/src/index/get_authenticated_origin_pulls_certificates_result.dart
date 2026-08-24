// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthenticatedOriginPullsCertificatesResult {
  /// The zone's leaf certificate.
  final pulumi.Input<String> certificate;
  /// When the certificate from the authority expires.
  final pulumi.Input<String> expiresOn;
  /// Identifier.
  final pulumi.Input<String> id;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String> issuer;
  /// The serial number on the uploaded certificate.
  final pulumi.Input<String> serialNumber;
  /// The type of hash used for the certificate.
  final pulumi.Input<String> signature;
  /// Status of the certificate activation.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  final pulumi.Input<String> status;
  /// This is the time the certificate was uploaded.
  final pulumi.Input<String> uploadedOn;

  /// Creates a new [GetAuthenticatedOriginPullsCertificatesResult].
  /// [certificate] The zone's leaf certificate.
  /// [expiresOn] When the certificate from the authority expires.
  /// [id] Identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [serialNumber] The serial number on the uploaded certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the certificate activation.
  /// [uploadedOn] This is the time the certificate was uploaded.
  const GetAuthenticatedOriginPullsCertificatesResult({
    required this.certificate,
    required this.expiresOn,
    required this.id,
    required this.issuer,
    required this.serialNumber,
    required this.signature,
    required this.status,
    required this.uploadedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'expiresOn': expiresOn,
      'id': id,
      'issuer': issuer,
      'serialNumber': serialNumber,
      'signature': signature,
      'status': status,
      'uploadedOn': uploadedOn,
    };
  }

  factory GetAuthenticatedOriginPullsCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsCertificatesResult(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      signature: pulumi.Input.fromValue(map['signature'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      uploadedOn: pulumi.Input.fromValue(map['uploadedOn'] as String),
    );
  }
}
