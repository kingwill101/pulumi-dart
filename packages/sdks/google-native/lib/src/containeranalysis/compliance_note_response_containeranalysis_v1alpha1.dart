// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark_response_containeranalysis_v1alpha1.dart';
import 'compliance_version_response_containeranalysis_v1alpha1.dart';

/// ComplianceNote encapsulates all information about a specific compliance check.
class ComplianceNoteResponseContaineranalysisV1alpha1 {
  /// Right now we only have one compliance type, but we may add additional types in the future.
  final pulumi.Input<CisBenchmarkResponseContaineranalysisV1alpha1> cisBenchmark;
  /// A description about this compliance check.
  final pulumi.Input<String> description;
  /// A rationale for the existence of this compliance check.
  final pulumi.Input<String> rationale;
  /// A description of remediation steps if the compliance check fails.
  final pulumi.Input<String> remediation;
  /// Serialized scan instructions with a predefined format.
  final pulumi.Input<String> scanInstructions;
  /// The title that identifies this compliance check.
  final pulumi.Input<String> title;
  /// The OS and config versions the benchmark applies to.
  final pulumi.Input<List<ComplianceVersionResponseContaineranalysisV1alpha1>> version;

  /// Creates a new [ComplianceNoteResponseContaineranalysisV1alpha1].
  /// [cisBenchmark] Right now we only have one compliance type, but we may add additional types in the future.
  /// [description] A description about this compliance check.
  /// [rationale] A rationale for the existence of this compliance check.
  /// [remediation] A description of remediation steps if the compliance check fails.
  /// [scanInstructions] Serialized scan instructions with a predefined format.
  /// [title] The title that identifies this compliance check.
  /// [version] The OS and config versions the benchmark applies to.
  ComplianceNoteResponseContaineranalysisV1alpha1({
    required this.cisBenchmark,
    required this.description,
    required this.rationale,
    required this.remediation,
    required this.scanInstructions,
    required this.title,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cisBenchmark': pulumi.Input.mapInputValue<CisBenchmarkResponseContaineranalysisV1alpha1, Map<String, dynamic>>(cisBenchmark, (value) => value.toMap()),
      'description': description,
      'rationale': rationale,
      'remediation': remediation,
      'scanInstructions': scanInstructions,
      'title': title,
      'version': pulumi.Input.mapInputValue<List<ComplianceVersionResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(version, (value) => pulumi.Input.encodeList<ComplianceVersionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ComplianceNoteResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComplianceNoteResponseContaineranalysisV1alpha1(
      cisBenchmark: (CisBenchmarkResponseContaineranalysisV1alpha1.fromMap((map['cisBenchmark'] as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      rationale: (map['rationale'] as String).input(),
      remediation: (map['remediation'] as String).input(),
      scanInstructions: (map['scanInstructions'] as String).input(),
      title: (map['title'] as String).input(),
      version: (pulumi.Input.decodeList<ComplianceVersionResponseContaineranalysisV1alpha1>(map['version'], (value) => ComplianceVersionResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

