// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_description_subject_description_subject_alt_name_custom_san.dart';

class CertificateCertificateDescriptionSubjectDescriptionSubjectAltName {
  /// (Output)
  /// Contains additional subject alternative name values.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan>>? customSans;
  /// Contains only valid, fully-qualified host names.
  final pulumi.Input<List<String>>? dnsNames;
  /// Contains only valid RFC 2822 E-mail addresses.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  /// Contains only valid RFC 3986 URIs.
  final pulumi.Input<List<String>>? uris;

  /// Creates a new [CertificateCertificateDescriptionSubjectDescriptionSubjectAltName].
  /// [customSans] (Output)
  /// [dnsNames] Contains only valid, fully-qualified host names.
  /// [emailAddresses] Contains only valid RFC 2822 E-mail addresses.
  /// [ipAddresses] Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  /// [uris] Contains only valid RFC 3986 URIs.
  const CertificateCertificateDescriptionSubjectDescriptionSubjectAltName({
    this.customSans,
    this.dnsNames,
    this.emailAddresses,
    this.ipAddresses,
    this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSans': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan>, List<Map<String, dynamic>>>(customSans, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsNames': ?dnsNames,
      'emailAddresses': ?emailAddresses,
      'ipAddresses': ?ipAddresses,
      'uris': ?uris,
    };
  }

  factory CertificateCertificateDescriptionSubjectDescriptionSubjectAltName.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionSubjectDescriptionSubjectAltName(
      customSans: (() { final guardedValue = map['customSans']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan>(guardedValue, (value) => CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsNames: (() { final guardedValue = map['dnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

