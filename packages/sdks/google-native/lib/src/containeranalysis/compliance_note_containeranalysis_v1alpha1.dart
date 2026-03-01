// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark_containeranalysis_v1alpha1.dart';
import 'compliance_version_containeranalysis_v1alpha1.dart';

/// ComplianceNote encapsulates all information about a specific compliance check.
class ComplianceNoteContaineranalysisV1alpha1 {
  /// Right now we only have one compliance type, but we may add additional types in the future.
  final CisBenchmarkContaineranalysisV1alpha1? cisBenchmark;
  /// A description about this compliance check.
  final String? description;
  /// A rationale for the existence of this compliance check.
  final String? rationale;
  /// A description of remediation steps if the compliance check fails.
  final String? remediation;
  /// Serialized scan instructions with a predefined format.
  final String? scanInstructions;
  /// The title that identifies this compliance check.
  final String? title;
  /// The OS and config versions the benchmark applies to.
  final List<ComplianceVersionContaineranalysisV1alpha1>? version;

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
      'cisBenchmark': ?cisBenchmark == null ? null : cisBenchmark!.toMap(),
      'description': ?description,
      'rationale': ?rationale,
      'remediation': ?remediation,
      'scanInstructions': ?scanInstructions,
      'title': ?title,
      'version': ?version == null ? null : pulumi.Input.encodeList<ComplianceVersionContaineranalysisV1alpha1, Map<String, dynamic>>(version!, (value) => value.toMap()),
    };
  }

  factory ComplianceNoteContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComplianceNoteContaineranalysisV1alpha1(
      cisBenchmark: map['cisBenchmark'] == null ? null : CisBenchmarkContaineranalysisV1alpha1.fromMap((map['cisBenchmark'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      rationale: map['rationale'] == null ? null : map['rationale'] as String,
      remediation: map['remediation'] == null ? null : map['remediation'] as String,
      scanInstructions: map['scanInstructions'] == null ? null : map['scanInstructions'] as String,
      title: map['title'] == null ? null : map['title'] as String,
      version: map['version'] == null ? null : pulumi.Input.decodeList<ComplianceVersionContaineranalysisV1alpha1>(map['version'], (value) => ComplianceVersionContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

