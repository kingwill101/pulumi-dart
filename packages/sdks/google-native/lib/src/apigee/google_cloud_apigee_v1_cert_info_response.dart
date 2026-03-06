// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// X.509 certificate as defined in RFC 5280.
class GoogleCloudApigeeV1CertInfoResponse {
  /// X.509 basic constraints extension.
  final pulumi.Input<String> basicConstraints;
  /// X.509 `notAfter` validity period in milliseconds since epoch.
  final pulumi.Input<String> expiryDate;
  /// Flag that specifies whether the certificate is valid. Flag is set to `Yes` if the certificate is valid, `No` if expired, or `Not yet` if not yet valid.
  final pulumi.Input<String> isValid;
  /// X.509 issuer.
  final pulumi.Input<String> issuer;
  /// Public key component of the X.509 subject public key info.
  final pulumi.Input<String> publicKey;
  /// X.509 serial number.
  final pulumi.Input<String> serialNumber;
  /// X.509 signatureAlgorithm.
  final pulumi.Input<String> sigAlgName;
  /// X.509 subject.
  final pulumi.Input<String> subject;
  /// X.509 subject alternative names (SANs) extension.
  final pulumi.Input<List<String>> subjectAlternativeNames;
  /// X.509 `notBefore` validity period in milliseconds since epoch.
  final pulumi.Input<String> validFrom;
  /// X.509 version.
  final pulumi.Input<int> version;

  /// Creates a new [GoogleCloudApigeeV1CertInfoResponse].
  /// [basicConstraints] X.509 basic constraints extension.
  /// [expiryDate] X.509 `notAfter` validity period in milliseconds since epoch.
  /// [isValid] Flag that specifies whether the certificate is valid. Flag is set to `Yes` if the certificate is valid, `No` if expired, or `Not yet` if not yet valid.
  /// [issuer] X.509 issuer.
  /// [publicKey] Public key component of the X.509 subject public key info.
  /// [serialNumber] X.509 serial number.
  /// [sigAlgName] X.509 signatureAlgorithm.
  /// [subject] X.509 subject.
  /// [subjectAlternativeNames] X.509 subject alternative names (SANs) extension.
  /// [validFrom] X.509 `notBefore` validity period in milliseconds since epoch.
  /// [version] X.509 version.
  const GoogleCloudApigeeV1CertInfoResponse({
    required this.basicConstraints,
    required this.expiryDate,
    required this.isValid,
    required this.issuer,
    required this.publicKey,
    required this.serialNumber,
    required this.sigAlgName,
    required this.subject,
    required this.subjectAlternativeNames,
    required this.validFrom,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicConstraints': basicConstraints,
      'expiryDate': expiryDate,
      'isValid': isValid,
      'issuer': issuer,
      'publicKey': publicKey,
      'serialNumber': serialNumber,
      'sigAlgName': sigAlgName,
      'subject': subject,
      'subjectAlternativeNames': subjectAlternativeNames,
      'validFrom': validFrom,
      'version': version,
    };
  }

  factory GoogleCloudApigeeV1CertInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CertInfoResponse(
      basicConstraints: pulumi.Input.fromValue(map['basicConstraints'] as String),
      expiryDate: pulumi.Input.fromValue(map['expiryDate'] as String),
      isValid: pulumi.Input.fromValue(map['isValid'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      sigAlgName: pulumi.Input.fromValue(map['sigAlgName'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      subjectAlternativeNames: pulumi.Input.fromValue((map['subjectAlternativeNames'] as List).cast<String>()),
      validFrom: pulumi.Input.fromValue(map['validFrom'] as String),
      version: pulumi.Input.fromValue(map['version'] as int),
    );
  }
}

