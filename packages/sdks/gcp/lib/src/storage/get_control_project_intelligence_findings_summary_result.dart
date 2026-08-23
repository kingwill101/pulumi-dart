// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_summary_finding_summary.dart';

/// Result data returned by getControlProjectIntelligenceFindingsSummary.
class GetControlProjectIntelligenceFindingsSummaryResult {
  final String? filter;
  /// The list of FindingSummary summaries. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingsSummaryFindingSummary> findingSummaries;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final String project;
  final String? resourceScope;

  /// Creates a new [GetControlProjectIntelligenceFindingsSummaryResult].
  /// [filter] Optional.
  /// [findingSummaries] The list of FindingSummary summaries. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Required.
  /// [resourceScope] Optional.
  const GetControlProjectIntelligenceFindingsSummaryResult({
    this.filter,
    required this.findingSummaries,
    required this.id,
    this.location,
    required this.project,
    this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'findingSummaries': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsSummaryFindingSummary, Map<String, dynamic>>(findingSummaries, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'project': project,
      'resourceScope': ?resourceScope,
    };
  }

  factory GetControlProjectIntelligenceFindingsSummaryResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsSummaryResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findingSummaries: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsSummaryFindingSummary>(map['findingSummaries']!, (value) => GetControlProjectIntelligenceFindingsSummaryFindingSummary.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: map['project'] as String,
      resourceScope: (() { final guardedValue = map['resourceScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
