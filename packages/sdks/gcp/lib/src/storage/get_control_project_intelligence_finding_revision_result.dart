// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revision_snapshot.dart';

/// Result data returned by getControlProjectIntelligenceFindingRevision.
class GetControlProjectIntelligenceFindingRevisionResult {
  /// The time when the finding was created.
  final String? createTime;
  final String? findingId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The resource name of the finding.
  final String? name;
  final String? project;
  final String? revisionId;
  /// The snapshot of the finding at revision creation time. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingRevisionSnapshot>? snapshots;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionResult].
  /// [createTime] The time when the finding was created.
  /// [findingId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The resource name of the finding.
  /// [project] Optional.
  /// [revisionId] Optional.
  /// [snapshots] The snapshot of the finding at revision creation time. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionResult({
    this.createTime,
    this.findingId,
    this.id,
    this.location,
    this.name,
    this.project,
    this.revisionId,
    this.snapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'findingId': ?findingId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'revisionId': ?revisionId,
      'snapshots': ?(() { final guardedValue = snapshots; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionSnapshot, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findingId: (() { final guardedValue = map['findingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshots: (() { final guardedValue = map['snapshots']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionSnapshot>(guardedValue, (value) => GetControlProjectIntelligenceFindingRevisionSnapshot.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
