// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark_response.dart';
import 'compliance_version_response.dart';

class ComplianceNoteResponse {
  final pulumi.Input<CisBenchmarkResponse> cisBenchmark;
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
  final pulumi.Input<List<ComplianceVersionResponse>> version;

  /// Creates a new [ComplianceNoteResponse].
  /// [cisBenchmark] Required.
  /// [description] A description about this compliance check.
  /// [rationale] A rationale for the existence of this compliance check.
  /// [remediation] A description of remediation steps if the compliance check fails.
  /// [scanInstructions] Serialized scan instructions with a predefined format.
  /// [title] The title that identifies this compliance check.
  /// [version] The OS and config versions the benchmark applies to.
  const ComplianceNoteResponse({
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
      'cisBenchmark': pulumi.Input.mapInputValue<CisBenchmarkResponse, Map<String, dynamic>>(cisBenchmark, (value) => value.toMap()),
      'description': description,
      'rationale': rationale,
      'remediation': remediation,
      'scanInstructions': scanInstructions,
      'title': title,
      'version': pulumi.Input.mapInputValue<List<ComplianceVersionResponse>, List<Map<String, dynamic>>>(version, (value) => pulumi.Input.encodeList<ComplianceVersionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ComplianceNoteResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceNoteResponse(
      cisBenchmark: pulumi.Input.fromValue(CisBenchmarkResponse.fromMap((map['cisBenchmark']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      rationale: pulumi.Input.fromValue(map['rationale'] as String),
      remediation: pulumi.Input.fromValue(map['remediation'] as String),
      scanInstructions: pulumi.Input.fromValue(map['scanInstructions'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      version: pulumi.Input.fromValue(pulumi.Input.decodeList<ComplianceVersionResponse>(map['version']!, (value) => ComplianceVersionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

