// ignore_for_file: unused_element, unnecessary_cast

import 'get_origin_ca_certificate_filter.dart';

/// Result data returned by getOriginCaCertificate.
class GetOriginCaCertificateResult {
  /// The Origin CA certificate. Will be newline-encoded.
  final String? certificate;
  /// Identifier.
  final String? certificateId;
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  final String? csr;
  /// When the certificate will expire.
  final String? expiresOn;
  final GetOriginCaCertificateFilter? filter;
  /// Array of hostnames or wildcard names bound to the certificate.
  /// Hostnames must be fully qualified domain names (FQDNs) belonging to zones on your account (e.g., `example.com` or `sub.example.com`). Wildcards are supported only as a `*.` prefix for a single level (e.g., `*.example.com`). Double wildcards (`*.*.example.com`) and interior wildcards (`foo.*.example.com`) are not allowed. The wildcard suffix must be a multi-label domain (`*.example.com` is valid, but `*.com` is not). Unicode/IDN hostnames are accepted and automatically converted to punycode.
  final List<String>? hostnames;
  /// Identifier.
  final String? id;
  /// Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
  /// Available values: "origin-rsa", "origin-ecc", "keyless-certificate".
  final String? requestType;
  /// The number of days for which the certificate should be valid.
  /// Available values: 7, 30, 90, 365, 730, 1095, 5475.
  final double? requestedValidity;

  /// Creates a new [GetOriginCaCertificateResult].
  /// [certificate] The Origin CA certificate. Will be newline-encoded.
  /// [certificateId] Identifier.
  /// [csr] The Certificate Signing Request (CSR). Must be newline-encoded.
  /// [expiresOn] When the certificate will expire.
  /// [filter] Optional.
  /// [hostnames] Array of hostnames or wildcard names bound to the certificate.
  /// [id] Identifier.
  /// [requestType] Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
  /// [requestedValidity] The number of days for which the certificate should be valid.
  const GetOriginCaCertificateResult({
    this.certificate,
    this.certificateId,
    this.csr,
    this.expiresOn,
    this.filter,
    this.hostnames,
    this.id,
    this.requestType,
    this.requestedValidity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateId': ?certificateId,
      'csr': ?csr,
      'expiresOn': ?expiresOn,
      'filter': ?filter?.toMap(),
      'hostnames': ?hostnames,
      'id': ?id,
      'requestType': ?requestType,
      'requestedValidity': ?requestedValidity,
    };
  }

  factory GetOriginCaCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetOriginCaCertificateResult(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetOriginCaCertificateFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestedValidity: (() { final guardedValue = map['requestedValidity']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
