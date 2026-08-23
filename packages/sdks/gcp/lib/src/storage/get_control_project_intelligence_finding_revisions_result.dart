// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revisions_revision.dart';

/// Result data returned by getControlProjectIntelligenceFindingRevisions.
class GetControlProjectIntelligenceFindingRevisionsResult {
  final String findingId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final int? pageSize;
  final String project;
  /// The list of intelligence finding revisions. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingRevisionsRevision> revisions;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsResult].
  /// [findingId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [pageSize] Optional.
  /// [project] Required.
  /// [revisions] The list of intelligence finding revisions. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionsResult({
    required this.findingId,
    required this.id,
    this.location,
    this.pageSize,
    required this.project,
    required this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingId': findingId,
      'id': id,
      'location': ?location,
      'pageSize': ?pageSize,
      'project': project,
      'revisions': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevision, Map<String, dynamic>>(revisions, (value) => value.toMap()),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsResult(
      findingId: map['findingId'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      project: map['project'] as String,
      revisions: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevision>(map['revisions']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevision.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
