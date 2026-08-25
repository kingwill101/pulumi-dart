// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revisions_revision.dart';

/// Result data returned by getControlProjectIntelligenceFindingRevisions.
class GetControlProjectIntelligenceFindingRevisionsResult {
  final String? findingId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final int? pageSize;
  final String? project;
  /// The list of intelligence finding revisions. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingRevisionsRevision>? revisions;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsResult].
  /// [findingId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [pageSize] Optional.
  /// [project] Optional.
  /// [revisions] The list of intelligence finding revisions. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionsResult({
    this.findingId,
    this.id,
    this.location,
    this.pageSize,
    this.project,
    this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingId': ?findingId,
      'id': ?id,
      'location': ?location,
      'pageSize': ?pageSize,
      'project': ?project,
      'revisions': ?(() { final guardedValue = revisions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevision, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsResult(
      findingId: (() { final guardedValue = map['findingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisions: (() { final guardedValue = map['revisions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevision>(guardedValue, (value) => GetControlProjectIntelligenceFindingRevisionsRevision.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
