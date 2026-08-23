// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthorityConfigX509ConfigCaOption {
  /// When true, the "CA" in Basic Constraints extension will be set to true.
  final pulumi.Input<bool> isCa;
  /// Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. Setting the value to 0
  /// requires setting 'zero_max_issuer_path_length = true'.
  final pulumi.Input<int> maxIssuerPathLength;
  /// When true, the "CA" in Basic Constraints extension will be set to false.
  /// If both 'is_ca' and 'non_ca' are unset, the extension will be omitted from the CA certificate.
  final pulumi.Input<bool> nonCa;
  /// When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  /// If both 'max_issuer_path_length' and 'zero_max_issuer_path_length' are unset,
  /// the max path length will be omitted from the CA certificate.
  final pulumi.Input<bool> zeroMaxIssuerPathLength;

  /// Creates a new [GetAuthorityConfigX509ConfigCaOption].
  /// [isCa] When true, the "CA" in Basic Constraints extension will be set to true.
  /// [maxIssuerPathLength] Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// [nonCa] When true, the "CA" in Basic Constraints extension will be set to false.
  /// [zeroMaxIssuerPathLength] When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  const GetAuthorityConfigX509ConfigCaOption({
    required this.isCa,
    required this.maxIssuerPathLength,
    required this.nonCa,
    required this.zeroMaxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCa': isCa,
      'maxIssuerPathLength': maxIssuerPathLength,
      'nonCa': nonCa,
      'zeroMaxIssuerPathLength': zeroMaxIssuerPathLength,
    };
  }

  factory GetAuthorityConfigX509ConfigCaOption.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigCaOption(
      isCa: pulumi.Input.fromValue(map['isCa'] as bool),
      maxIssuerPathLength: pulumi.Input.fromValue(map['maxIssuerPathLength'] as int),
      nonCa: pulumi.Input.fromValue(map['nonCa'] as bool),
      zeroMaxIssuerPathLength: pulumi.Input.fromValue(map['zeroMaxIssuerPathLength'] as bool),
    );
  }
}
