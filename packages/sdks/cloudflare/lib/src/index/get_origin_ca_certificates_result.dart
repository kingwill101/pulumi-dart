// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOriginCaCertificatesResult {
  /// The Origin CA certificate. Will be newline-encoded.
  final pulumi.Input<String> certificate;
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  final pulumi.Input<String> csr;
  /// When the certificate will expire.
  final pulumi.Input<String> expiresOn;
  /// Array of hostnames or wildcard names bound to the certificate.
  /// Hostnames must be fully qualified domain names (FQDNs) belonging to zones on your account (e.g., `example.com` or `sub.example.com`). Wildcards are supported only as a `*.` prefix for a single level (e.g., `*.example.com`). Double wildcards (`*.*.example.com`) and interior wildcards (`foo.*.example.com`) are not allowed. The wildcard suffix must be a multi-label domain (`*.example.com` is valid, but `*.com` is not). Unicode/IDN hostnames are accepted and automatically converted to punycode.
  final pulumi.Input<List<String>> hostnames;
  /// Identifier.
  final pulumi.Input<String> id;
  /// Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
  /// Available values: "origin-rsa", "origin-ecc", "keyless-certificate".
  final pulumi.Input<String> requestType;
  /// The number of days for which the certificate should be valid.
  /// Available values: 7, 30, 90, 365, 730, 1095, 5475.
  final pulumi.Input<double> requestedValidity;

  /// Creates a new [GetOriginCaCertificatesResult].
  /// [certificate] The Origin CA certificate. Will be newline-encoded.
  /// [csr] The Certificate Signing Request (CSR). Must be newline-encoded.
  /// [expiresOn] When the certificate will expire.
  /// [hostnames] Array of hostnames or wildcard names bound to the certificate.
  /// [id] Identifier.
  /// [requestType] Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
  /// [requestedValidity] The number of days for which the certificate should be valid.
  const GetOriginCaCertificatesResult({
    required this.certificate,
    required this.csr,
    required this.expiresOn,
    required this.hostnames,
    required this.id,
    required this.requestType,
    required this.requestedValidity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'csr': csr,
      'expiresOn': expiresOn,
      'hostnames': hostnames,
      'id': id,
      'requestType': requestType,
      'requestedValidity': requestedValidity,
    };
  }

  factory GetOriginCaCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetOriginCaCertificatesResult(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      csr: pulumi.Input.fromValue(map['csr'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      requestType: pulumi.Input.fromValue(map['requestType'] as String),
      requestedValidity: pulumi.Input.fromValue((map['requestedValidity'] as num).toDouble()),
    );
  }
}
