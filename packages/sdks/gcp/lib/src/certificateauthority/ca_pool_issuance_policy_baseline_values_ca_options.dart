// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaPoolIssuancePolicyBaselineValuesCaOptions {
  /// When true, the "CA" in Basic Constraints extension will be set to true.
  final pulumi.Input<bool>? isCa;
  /// Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail.
  final pulumi.Input<int>? maxIssuerPathLength;
  /// When true, the "CA" in Basic Constraints extension will be set to false.
  /// If both `is_ca` and `non_ca` are unset, the extension will be omitted from the CA certificate.
  final pulumi.Input<bool>? nonCa;
  /// When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  /// if both `max_issuer_path_length` and `zero_max_issuer_path_length` are unset,
  /// the max path length will be omitted from the CA certificate.
  final pulumi.Input<bool>? zeroMaxIssuerPathLength;

  /// Creates a new [CaPoolIssuancePolicyBaselineValuesCaOptions].
  /// [isCa] When true, the "CA" in Basic Constraints extension will be set to true.
  /// [maxIssuerPathLength] Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// [nonCa] When true, the "CA" in Basic Constraints extension will be set to false.
  /// [zeroMaxIssuerPathLength] When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  const CaPoolIssuancePolicyBaselineValuesCaOptions({
    this.isCa,
    this.maxIssuerPathLength,
    this.nonCa,
    this.zeroMaxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCa': ?isCa,
      'maxIssuerPathLength': ?maxIssuerPathLength,
      'nonCa': ?nonCa,
      'zeroMaxIssuerPathLength': ?zeroMaxIssuerPathLength,
    };
  }

  factory CaPoolIssuancePolicyBaselineValuesCaOptions.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesCaOptions(
      isCa: (() { final guardedValue = map['isCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxIssuerPathLength: (() { final guardedValue = map['maxIssuerPathLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nonCa: (() { final guardedValue = map['nonCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zeroMaxIssuerPathLength: (() { final guardedValue = map['zeroMaxIssuerPathLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

