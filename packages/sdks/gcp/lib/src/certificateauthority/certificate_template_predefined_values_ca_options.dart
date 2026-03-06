// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateTemplatePredefinedValuesCaOptions {
  /// Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is true, the "CA" in Basic Constraints extension will be set to true.
  final pulumi.Input<bool>? isCa;
  /// Optional. Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail.
  final pulumi.Input<int>? maxIssuerPathLength;
  /// Optional. When true, the "CA" in Basic Constraints extension will be set to null and omitted from the CA certificate.
  /// If both `is_ca` and `null_ca` are unset, the "CA" in Basic Constraints extension will be set to false.
  /// Note that the behavior when `is_ca = false` for this resource is different from the behavior in the Certificate Authority, Certificate and CaPool resources.
  final pulumi.Input<bool>? nullCa;
  /// Optional. When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  /// if both `max_issuer_path_length` and `zero_max_issuer_path_length` are unset,
  /// the max path length will be omitted from the CA certificate.
  final pulumi.Input<bool>? zeroMaxIssuerPathLength;

  /// Creates a new [CertificateTemplatePredefinedValuesCaOptions].
  /// [isCa] Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is true, the "CA" in Basic Constraints extension will be set to true.
  /// [maxIssuerPathLength] Optional. Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// [nullCa] Optional. When true, the "CA" in Basic Constraints extension will be set to null and omitted from the CA certificate.
  /// [zeroMaxIssuerPathLength] Optional. When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  const CertificateTemplatePredefinedValuesCaOptions({
    this.isCa,
    this.maxIssuerPathLength,
    this.nullCa,
    this.zeroMaxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCa': ?isCa,
      'maxIssuerPathLength': ?maxIssuerPathLength,
      'nullCa': ?nullCa,
      'zeroMaxIssuerPathLength': ?zeroMaxIssuerPathLength,
    };
  }

  factory CertificateTemplatePredefinedValuesCaOptions.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValuesCaOptions(
      isCa: (() { final guardedValue = map['isCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxIssuerPathLength: (() { final guardedValue = map['maxIssuerPathLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nullCa: (() { final guardedValue = map['nullCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zeroMaxIssuerPathLength: (() { final guardedValue = map['zeroMaxIssuerPathLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

