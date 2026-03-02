// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark_containeranalysis_v1alpha1.dart';
import 'compliance_version_containeranalysis_v1alpha1.dart';

/// ComplianceNote encapsulates all information about a specific compliance check.
class ComplianceNoteContaineranalysisV1alpha1 {
  /// Right now we only have one compliance type, but we may add additional types in the future.
  final pulumi.Input<CisBenchmarkContaineranalysisV1alpha1>? cisBenchmark;
  /// A description about this compliance check.
  final pulumi.Input<String>? description;
  /// A rationale for the existence of this compliance check.
  final pulumi.Input<String>? rationale;
  /// A description of remediation steps if the compliance check fails.
  final pulumi.Input<String>? remediation;
  /// Serialized scan instructions with a predefined format.
  final pulumi.Input<String>? scanInstructions;
  /// The title that identifies this compliance check.
  final pulumi.Input<String>? title;
  /// The OS and config versions the benchmark applies to.
  final pulumi.Input<List<ComplianceVersionContaineranalysisV1alpha1>>? version;

  /// Creates a new [ComplianceNoteContaineranalysisV1alpha1].
  /// [cisBenchmark] Right now we only have one compliance type, but we may add additional types in the future.
  /// [description] A description about this compliance check.
  /// [rationale] A rationale for the existence of this compliance check.
  /// [remediation] A description of remediation steps if the compliance check fails.
  /// [scanInstructions] Serialized scan instructions with a predefined format.
  /// [title] The title that identifies this compliance check.
  /// [version] The OS and config versions the benchmark applies to.
  ComplianceNoteContaineranalysisV1alpha1({
    this.cisBenchmark,
    this.description,
    this.rationale,
    this.remediation,
    this.scanInstructions,
    this.title,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cisBenchmark': ?pulumi.Input.mapOptionalInputValue<CisBenchmarkContaineranalysisV1alpha1, Map<String, dynamic>>(cisBenchmark, (value) => value.toMap()),
      'description': ?description,
      'rationale': ?rationale,
      'remediation': ?remediation,
      'scanInstructions': ?scanInstructions,
      'title': ?title,
      'version': ?pulumi.Input.mapOptionalInputValue<List<ComplianceVersionContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(version, (value) => pulumi.Input.encodeList<ComplianceVersionContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ComplianceNoteContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComplianceNoteContaineranalysisV1alpha1(
      cisBenchmark: map['cisBenchmark'] == null ? null : (CisBenchmarkContaineranalysisV1alpha1.fromMap((map['cisBenchmark'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      rationale: map['rationale'] == null ? null : (map['rationale'] as String).input(),
      remediation: map['remediation'] == null ? null : (map['remediation'] as String).input(),
      scanInstructions: map['scanInstructions'] == null ? null : (map['scanInstructions'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      version: map['version'] == null ? null : (pulumi.Input.decodeList<ComplianceVersionContaineranalysisV1alpha1>(map['version'], (value) => ComplianceVersionContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

