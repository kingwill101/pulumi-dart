// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the CIS benchmark version that is applicable to a given OS and os version.
class ComplianceVersionContaineranalysisV1alpha1 {
  /// The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  final pulumi.Input<String>? benchmarkDocument;
  /// The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  final pulumi.Input<String>? cpeUri;
  /// The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  final pulumi.Input<String>? version;

  /// Creates a new [ComplianceVersionContaineranalysisV1alpha1].
  /// [benchmarkDocument] The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  /// [cpeUri] The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  /// [version] The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  ComplianceVersionContaineranalysisV1alpha1({
    this.benchmarkDocument,
    this.cpeUri,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'benchmarkDocument': ?benchmarkDocument,
      'cpeUri': ?cpeUri,
      'version': ?version,
    };
  }

  factory ComplianceVersionContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComplianceVersionContaineranalysisV1alpha1(
      benchmarkDocument: map['benchmarkDocument'] == null ? null : (map['benchmarkDocument']! as String).input(),
      cpeUri: map['cpeUri'] == null ? null : (map['cpeUri']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

