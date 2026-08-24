// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_certificates_result_certificate_authority.dart';

class GetClientCertificatesResult {
  /// The Client Certificate PEM.
  final pulumi.Input<String> certificate;
  /// Certificate Authority used to issue the Client Certificate.
  final pulumi.Input<GetClientCertificatesResultCertificateAuthority> certificateAuthority;
  /// Common Name of the Client Certificate.
  final pulumi.Input<String> commonName;
  /// Country, provided by the CSR.
  final pulumi.Input<String> country;
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  final pulumi.Input<String> csr;
  /// Date that the Client Certificate expires.
  final pulumi.Input<String> expiresOn;
  /// Unique identifier of the Client Certificate.
  final pulumi.Input<String> fingerprintSha256;
  /// Identifier.
  final pulumi.Input<String> id;
  /// Date that the Client Certificate was issued by the Certificate Authority.
  final pulumi.Input<String> issuedOn;
  /// Location, provided by the CSR.
  final pulumi.Input<String> location;
  /// Organization, provided by the CSR.
  final pulumi.Input<String> organization;
  /// Organizational Unit, provided by the CSR.
  final pulumi.Input<String> organizationalUnit;
  /// The serial number on the created Client Certificate.
  final pulumi.Input<String> serialNumber;
  /// The type of hash used for the Client Certificate..
  final pulumi.Input<String> signature;
  /// Subject Key Identifier.
  final pulumi.Input<String> ski;
  /// State, provided by the CSR.
  final pulumi.Input<String> state;
  /// Client Certificates may be active or revoked, and the pending*reactivation or pending*revocation represent in-progress asynchronous transitions.
  /// Available values: "active", "pending*reactivation", "pending*revocation", "revoked".
  final pulumi.Input<String> status;
  /// The number of days the Client Certificate will be valid after the issuedOn date.
  final pulumi.Input<int> validityDays;

  /// Creates a new [GetClientCertificatesResult].
  /// [certificate] The Client Certificate PEM.
  /// [certificateAuthority] Certificate Authority used to issue the Client Certificate.
  /// [commonName] Common Name of the Client Certificate.
  /// [country] Country, provided by the CSR.
  /// [csr] The Certificate Signing Request (CSR). Must be newline-encoded.
  /// [expiresOn] Date that the Client Certificate expires.
  /// [fingerprintSha256] Unique identifier of the Client Certificate.
  /// [id] Identifier.
  /// [issuedOn] Date that the Client Certificate was issued by the Certificate Authority.
  /// [location] Location, provided by the CSR.
  /// [organization] Organization, provided by the CSR.
  /// [organizationalUnit] Organizational Unit, provided by the CSR.
  /// [serialNumber] The serial number on the created Client Certificate.
  /// [signature] The type of hash used for the Client Certificate..
  /// [ski] Subject Key Identifier.
  /// [state] State, provided by the CSR.
  /// [status] Client Certificates may be active or revoked, and the pending*reactivation or pending*revocation represent in-progress asynchronous transitions.
  /// [validityDays] The number of days the Client Certificate will be valid after the issuedOn date.
  const GetClientCertificatesResult({
    required this.certificate,
    required this.certificateAuthority,
    required this.commonName,
    required this.country,
    required this.csr,
    required this.expiresOn,
    required this.fingerprintSha256,
    required this.id,
    required this.issuedOn,
    required this.location,
    required this.organization,
    required this.organizationalUnit,
    required this.serialNumber,
    required this.signature,
    required this.ski,
    required this.state,
    required this.status,
    required this.validityDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'certificateAuthority': pulumi.Input.mapInputValue<GetClientCertificatesResultCertificateAuthority, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
      'commonName': commonName,
      'country': country,
      'csr': csr,
      'expiresOn': expiresOn,
      'fingerprintSha256': fingerprintSha256,
      'id': id,
      'issuedOn': issuedOn,
      'location': location,
      'organization': organization,
      'organizationalUnit': organizationalUnit,
      'serialNumber': serialNumber,
      'signature': signature,
      'ski': ski,
      'state': state,
      'status': status,
      'validityDays': validityDays,
    };
  }

  factory GetClientCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetClientCertificatesResult(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      certificateAuthority: pulumi.Input.fromValue(GetClientCertificatesResultCertificateAuthority.fromMap((map['certificateAuthority']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      country: pulumi.Input.fromValue(map['country'] as String),
      csr: pulumi.Input.fromValue(map['csr'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      fingerprintSha256: pulumi.Input.fromValue(map['fingerprintSha256'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuedOn: pulumi.Input.fromValue(map['issuedOn'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      organizationalUnit: pulumi.Input.fromValue(map['organizationalUnit'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      signature: pulumi.Input.fromValue(map['signature'] as String),
      ski: pulumi.Input.fromValue(map['ski'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      validityDays: pulumi.Input.fromValue((map['validityDays'] as num).toInt()),
    );
  }
}
