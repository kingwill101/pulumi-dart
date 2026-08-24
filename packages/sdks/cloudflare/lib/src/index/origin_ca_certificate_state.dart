// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OriginCaCertificate resources.
class OriginCaCertificateState {
  /// The Origin CA certificate. Will be newline-encoded.
  final pulumi.Input<String?>? certificate;
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  final pulumi.Input<String?>? csr;
  /// When the certificate will expire.
  final pulumi.Input<String?>? expiresOn;
  /// Array of hostnames or wildcard names bound to the certificate.
  /// Hostnames must be fully qualified domain names (FQDNs) belonging to zones on your account (e.g., `example.com` or `sub.example.com`). Wildcards are supported only as a `*.` prefix for a single level (e.g., `*.example.com`). Double wildcards (`*.*.example.com`) and interior wildcards (`foo.*.example.com`) are not allowed. The wildcard suffix must be a multi-label domain (`*.example.com` is valid, but `*.com` is not). Unicode/IDN hostnames are accepted and automatically converted to punycode.
  final pulumi.Input<List<String>?>? hostnames;
  /// Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
  /// Available values: "origin-rsa", "origin-ecc", "keyless-certificate".
  final pulumi.Input<String?>? requestType;
  /// The number of days for which the certificate should be valid.
  /// Available values: 7, 30, 90, 365, 730, 1095, 5475.
  final pulumi.Input<double?>? requestedValidity;

  /// Creates a new [OriginCaCertificateState].
  /// [certificate] The Origin CA certificate. Will be newline-encoded.
  /// [csr] The Certificate Signing Request (CSR). Must be newline-encoded.
  /// [expiresOn] When the certificate will expire.
  /// [hostnames] Array of hostnames or wildcard names bound to the certificate.
  /// [requestType] Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
  /// [requestedValidity] The number of days for which the certificate should be valid.
  const OriginCaCertificateState({
    this.certificate,
    this.csr,
    this.expiresOn,
    this.hostnames,
    this.requestType,
    this.requestedValidity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'csr': ?csr,
      'expiresOn': ?expiresOn,
      'hostnames': ?hostnames,
      'requestType': ?requestType,
      'requestedValidity': ?requestedValidity,
    };
  }

  factory OriginCaCertificateState.fromMap(Map<String, dynamic> map) {
    return OriginCaCertificateState(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedValidity: (() { final guardedValue = map['requestedValidity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
