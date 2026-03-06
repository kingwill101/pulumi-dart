// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the CIS benchmark version that is applicable to a given OS and os version.
class ComplianceVersionResponseContaineranalysisV1alpha1 {
  /// The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  final pulumi.Input<String> benchmarkDocument;
  /// The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  final pulumi.Input<String> cpeUri;
  /// The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  final pulumi.Input<String> version;

  /// Creates a new [ComplianceVersionResponseContaineranalysisV1alpha1].
  /// [benchmarkDocument] The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  /// [cpeUri] The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  /// [version] The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  const ComplianceVersionResponseContaineranalysisV1alpha1({
    required this.benchmarkDocument,
    required this.cpeUri,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'benchmarkDocument': benchmarkDocument,
      'cpeUri': cpeUri,
      'version': version,
    };
  }

  factory ComplianceVersionResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComplianceVersionResponseContaineranalysisV1alpha1(
      benchmarkDocument: pulumi.Input.fromValue(map['benchmarkDocument'] as String),
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

