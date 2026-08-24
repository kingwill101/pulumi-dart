// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMtlsCertificatesResult {
  /// Indicates whether the certificate is a CA or leaf certificate.
  final pulumi.Input<bool> ca;
  /// The uploaded root CA certificate.
  final pulumi.Input<String> certificates;
  /// When the certificate expires.
  final pulumi.Input<String> expiresOn;
  /// Identifier.
  final pulumi.Input<String> id;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String> issuer;
  /// Optional unique name for the certificate. Only used for human readability.
  final pulumi.Input<String> name;
  /// The certificate serial number.
  final pulumi.Input<String> serialNumber;
  /// The type of hash used for the certificate.
  final pulumi.Input<String> signature;
  /// This is the time the certificate was uploaded.
  final pulumi.Input<String> uploadedOn;

  /// Creates a new [GetMtlsCertificatesResult].
  /// [ca] Indicates whether the certificate is a CA or leaf certificate.
  /// [certificates] The uploaded root CA certificate.
  /// [expiresOn] When the certificate expires.
  /// [id] Identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [name] Optional unique name for the certificate. Only used for human readability.
  /// [serialNumber] The certificate serial number.
  /// [signature] The type of hash used for the certificate.
  /// [uploadedOn] This is the time the certificate was uploaded.
  const GetMtlsCertificatesResult({
    required this.ca,
    required this.certificates,
    required this.expiresOn,
    required this.id,
    required this.issuer,
    required this.name,
    required this.serialNumber,
    required this.signature,
    required this.uploadedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ca': ca,
      'certificates': certificates,
      'expiresOn': expiresOn,
      'id': id,
      'issuer': issuer,
      'name': name,
      'serialNumber': serialNumber,
      'signature': signature,
      'uploadedOn': uploadedOn,
    };
  }

  factory GetMtlsCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetMtlsCertificatesResult(
      ca: pulumi.Input.fromValue(map['ca'] as bool),
      certificates: pulumi.Input.fromValue(map['certificates'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      signature: pulumi.Input.fromValue(map['signature'] as String),
      uploadedOn: pulumi.Input.fromValue(map['uploadedOn'] as String),
    );
  }
}
