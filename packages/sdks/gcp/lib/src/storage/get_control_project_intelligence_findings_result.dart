// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding.dart';

/// Result data returned by getControlProjectIntelligenceFindings.
class GetControlProjectIntelligenceFindingsResult {
  final String? filter;
  /// The list of intelligence findings. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingsFinding> findings;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final int? pageSize;
  final String project;

  /// Creates a new [GetControlProjectIntelligenceFindingsResult].
  /// [filter] Optional.
  /// [findings] The list of intelligence findings. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [pageSize] Optional.
  /// [project] Required.
  const GetControlProjectIntelligenceFindingsResult({
    this.filter,
    required this.findings,
    required this.id,
    this.location,
    this.pageSize,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'findings': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFinding, Map<String, dynamic>>(findings, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'pageSize': ?pageSize,
      'project': project,
    };
  }

  factory GetControlProjectIntelligenceFindingsResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findings: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFinding>(map['findings']!, (value) => GetControlProjectIntelligenceFindingsFinding.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      project: map['project'] as String,
    );
  }
}
