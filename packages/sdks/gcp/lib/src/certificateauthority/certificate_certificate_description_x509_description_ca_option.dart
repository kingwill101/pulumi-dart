// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificateDescriptionX509DescriptionCaOption {
  /// When true, the "CA" in Basic Constraints extension will be set to true.
  final pulumi.Input<bool>? isCa;
  /// Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail.
  final pulumi.Input<int>? maxIssuerPathLength;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionCaOption].
  /// [isCa] When true, the "CA" in Basic Constraints extension will be set to true.
  /// [maxIssuerPathLength] Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  CertificateCertificateDescriptionX509DescriptionCaOption({
    this.isCa,
    this.maxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCa': ?isCa,
      'maxIssuerPathLength': ?maxIssuerPathLength,
    };
  }

  factory CertificateCertificateDescriptionX509DescriptionCaOption.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionCaOption(
      isCa: (() { final guardedValue = map['isCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxIssuerPathLength: (() { final guardedValue = map['maxIssuerPathLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

