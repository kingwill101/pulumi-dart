// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_certificate_certificate_authority.dart';

/// Input properties used for looking up and filtering ClientCertificate resources.
class ClientCertificateState {
  /// The Client Certificate PEM.
  final pulumi.Input<String?>? certificate;
  /// Certificate Authority used to issue the Client Certificate.
  final pulumi.Input<ClientCertificateCertificateAuthority?>? certificateAuthority;
  /// Common Name of the Client Certificate.
  final pulumi.Input<String?>? commonName;
  /// Country, provided by the CSR.
  final pulumi.Input<String?>? country;
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  final pulumi.Input<String?>? csr;
  /// Date that the Client Certificate expires.
  final pulumi.Input<String?>? expiresOn;
  /// Unique identifier of the Client Certificate.
  final pulumi.Input<String?>? fingerprintSha256;
  /// Date that the Client Certificate was issued by the Certificate Authority.
  final pulumi.Input<String?>? issuedOn;
  /// Location, provided by the CSR.
  final pulumi.Input<String?>? location;
  /// Organization, provided by the CSR.
  final pulumi.Input<String?>? organization;
  /// Organizational Unit, provided by the CSR.
  final pulumi.Input<String?>? organizationalUnit;
  final pulumi.Input<bool?>? reactivate;
  /// The serial number on the created Client Certificate.
  final pulumi.Input<String?>? serialNumber;
  /// The type of hash used for the Client Certificate..
  final pulumi.Input<String?>? signature;
  /// Subject Key Identifier.
  final pulumi.Input<String?>? ski;
  /// State, provided by the CSR.
  final pulumi.Input<String?>? state;
  /// Client Certificates may be active or revoked, and the pending*reactivation or pending*revocation represent in-progress asynchronous transitions.
  /// Available values: "active", "pending*reactivation", "pending*revocation", "revoked".
  final pulumi.Input<String?>? status;
  /// The number of days the Client Certificate will be valid after the issuedOn date.
  final pulumi.Input<int?>? validityDays;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ClientCertificateState].
  /// [certificate] The Client Certificate PEM.
  /// [certificateAuthority] Certificate Authority used to issue the Client Certificate.
  /// [commonName] Common Name of the Client Certificate.
  /// [country] Country, provided by the CSR.
  /// [csr] The Certificate Signing Request (CSR). Must be newline-encoded.
  /// [expiresOn] Date that the Client Certificate expires.
  /// [fingerprintSha256] Unique identifier of the Client Certificate.
  /// [issuedOn] Date that the Client Certificate was issued by the Certificate Authority.
  /// [location] Location, provided by the CSR.
  /// [organization] Organization, provided by the CSR.
  /// [organizationalUnit] Organizational Unit, provided by the CSR.
  /// [reactivate] Optional.
  /// [serialNumber] The serial number on the created Client Certificate.
  /// [signature] The type of hash used for the Client Certificate..
  /// [ski] Subject Key Identifier.
  /// [state] State, provided by the CSR.
  /// [status] Client Certificates may be active or revoked, and the pending*reactivation or pending*revocation represent in-progress asynchronous transitions.
  /// [validityDays] The number of days the Client Certificate will be valid after the issuedOn date.
  /// [zoneId] Identifier.
  const ClientCertificateState({
    this.certificate,
    this.certificateAuthority,
    this.commonName,
    this.country,
    this.csr,
    this.expiresOn,
    this.fingerprintSha256,
    this.issuedOn,
    this.location,
    this.organization,
    this.organizationalUnit,
    this.reactivate,
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
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<ClientCertificateCertificateAuthority, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
      'commonName': ?commonName,
      'country': ?country,
      'csr': ?csr,
      'expiresOn': ?expiresOn,
      'fingerprintSha256': ?fingerprintSha256,
      'issuedOn': ?issuedOn,
      'location': ?location,
      'organization': ?organization,
      'organizationalUnit': ?organizationalUnit,
      'reactivate': ?reactivate,
      'serialNumber': ?serialNumber,
      'signature': ?signature,
      'ski': ?ski,
      'state': ?state,
      'status': ?status,
      'validityDays': ?validityDays,
      'zoneId': ?zoneId,
    };
  }

  factory ClientCertificateState.fromMap(Map<String, dynamic> map) {
    return ClientCertificateState(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientCertificateCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprintSha256: (() { final guardedValue = map['fingerprintSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuedOn: (() { final guardedValue = map['issuedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reactivate: (() { final guardedValue = map['reactivate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ski: (() { final guardedValue = map['ski']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validityDays: (() { final guardedValue = map['validityDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
