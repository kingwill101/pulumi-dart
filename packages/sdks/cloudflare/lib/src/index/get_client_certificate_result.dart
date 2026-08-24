// ignore_for_file: unused_element, unnecessary_cast

import 'get_client_certificate_certificate_authority.dart';
import 'get_client_certificate_filter.dart';

/// Result data returned by getClientCertificate.
class GetClientCertificateResult {
  /// The Client Certificate PEM.
  final String? certificate;
  /// Certificate Authority used to issue the Client Certificate.
  final GetClientCertificateCertificateAuthority? certificateAuthority;
  /// Identifier.
  final String? clientCertificateId;
  /// Common Name of the Client Certificate.
  final String? commonName;
  /// Country, provided by the CSR.
  final String? country;
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  final String? csr;
  /// Date that the Client Certificate expires.
  final String? expiresOn;
  final GetClientCertificateFilter? filter;
  /// Unique identifier of the Client Certificate.
  final String? fingerprintSha256;
  /// Identifier.
  final String? id;
  /// Date that the Client Certificate was issued by the Certificate Authority.
  final String? issuedOn;
  /// Location, provided by the CSR.
  final String? location;
  /// Organization, provided by the CSR.
  final String? organization;
  /// Organizational Unit, provided by the CSR.
  final String? organizationalUnit;
  /// The serial number on the created Client Certificate.
  final String? serialNumber;
  /// The type of hash used for the Client Certificate..
  final String? signature;
  /// Subject Key Identifier.
  final String? ski;
  /// State, provided by the CSR.
  final String? state;
  /// Client Certificates may be active or revoked, and the pending*reactivation or pending*revocation represent in-progress asynchronous transitions.
  /// Available values: "active", "pending*reactivation", "pending*revocation", "revoked".
  final String? status;
  /// The number of days the Client Certificate will be valid after the issuedOn date.
  final int? validityDays;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetClientCertificateResult].
  /// [certificate] The Client Certificate PEM.
  /// [certificateAuthority] Certificate Authority used to issue the Client Certificate.
  /// [clientCertificateId] Identifier.
  /// [commonName] Common Name of the Client Certificate.
  /// [country] Country, provided by the CSR.
  /// [csr] The Certificate Signing Request (CSR). Must be newline-encoded.
  /// [expiresOn] Date that the Client Certificate expires.
  /// [filter] Optional.
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
  /// [zoneId] Identifier.
  const GetClientCertificateResult({
    this.certificate,
    this.certificateAuthority,
    this.clientCertificateId,
    this.commonName,
    this.country,
    this.csr,
    this.expiresOn,
    this.filter,
    this.fingerprintSha256,
    this.id,
    this.issuedOn,
    this.location,
    this.organization,
    this.organizationalUnit,
    this.serialNumber,
    this.signature,
    this.ski,
    this.state,
    this.status,
    this.validityDays,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateAuthority': ?certificateAuthority?.toMap(),
      'clientCertificateId': ?clientCertificateId,
      'commonName': ?commonName,
      'country': ?country,
      'csr': ?csr,
      'expiresOn': ?expiresOn,
      'filter': ?filter?.toMap(),
      'fingerprintSha256': ?fingerprintSha256,
      'id': ?id,
      'issuedOn': ?issuedOn,
      'location': ?location,
      'organization': ?organization,
      'organizationalUnit': ?organizationalUnit,
      'serialNumber': ?serialNumber,
      'signature': ?signature,
      'ski': ?ski,
      'state': ?state,
      'status': ?status,
      'validityDays': ?validityDays,
      'zoneId': ?zoneId,
    };
  }

  factory GetClientCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetClientCertificateResult(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return GetClientCertificateCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clientCertificateId: (() { final guardedValue = map['clientCertificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return guardedValue as String; })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetClientCertificateFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fingerprintSha256: (() { final guardedValue = map['fingerprintSha256']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuedOn: (() { final guardedValue = map['issuedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ski: (() { final guardedValue = map['ski']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validityDays: (() { final guardedValue = map['validityDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
