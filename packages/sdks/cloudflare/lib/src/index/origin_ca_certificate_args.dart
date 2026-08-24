// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_origin_ca_certificate_origin_ca_certificate_args_doc}
/// The set of arguments for OriginCaCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_origin_ca_certificate_origin_ca_certificate_args_doc}
class OriginCaCertificateArgs {
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  final pulumi.Input<String> csr;
  /// Array of hostnames or wildcard names bound to the certificate.
  /// Hostnames must be fully qualified domain names (FQDNs) belonging to zones on your account (e.g., `example.com` or `sub.example.com`). Wildcards are supported only as a `*.` prefix for a single level (e.g., `*.example.com`). Double wildcards (`*.*.example.com`) and interior wildcards (`foo.*.example.com`) are not allowed. The wildcard suffix must be a multi-label domain (`*.example.com` is valid, but `*.com` is not). Unicode/IDN hostnames are accepted and automatically converted to punycode.
  final pulumi.Input<List<String>> hostnames;
  /// Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
  /// Available values: "origin-rsa", "origin-ecc", "keyless-certificate".
  final pulumi.Input<String> requestType;
  /// The number of days for which the certificate should be valid.
  /// Available values: 7, 30, 90, 365, 730, 1095, 5475.
  final pulumi.Input<double?>? requestedValidity;

  /// Creates a new [OriginCaCertificateArgs].
  /// [csr] The Certificate Signing Request (CSR). Must be newline-encoded.
  /// [hostnames] Array of hostnames or wildcard names bound to the certificate.
  /// [requestType] Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
  /// [requestedValidity] The number of days for which the certificate should be valid.
  const OriginCaCertificateArgs({
    required this.csr,
    required this.hostnames,
    required this.requestType,
    this.requestedValidity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csr': csr,
      'hostnames': hostnames,
      'requestType': requestType,
      'requestedValidity': ?requestedValidity,
    };
  }

  factory OriginCaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return OriginCaCertificateArgs(
      csr: pulumi.Input.fromValue(map['csr'] as String),
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
      requestType: pulumi.Input.fromValue(map['requestType'] as String),
      requestedValidity: (() { final guardedValue = map['requestedValidity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
