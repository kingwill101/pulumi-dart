// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revision_snapshot.dart';

/// Result data returned by getControlProjectIntelligenceFindingRevision.
class GetControlProjectIntelligenceFindingRevisionResult {
  /// The time when the finding was created.
  final String createTime;
  final String findingId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  /// The resource name of the finding.
  final String name;
  final String project;
  final String revisionId;
  /// The snapshot of the finding at revision creation time. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingRevisionSnapshot> snapshots;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionResult].
  /// [createTime] The time when the finding was created.
  /// [findingId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The resource name of the finding.
  /// [project] Required.
  /// [revisionId] Required.
  /// [snapshots] The snapshot of the finding at revision creation time. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionResult({
    required this.createTime,
    required this.findingId,
    required this.id,
    this.location,
    required this.name,
    required this.project,
    required this.revisionId,
    required this.snapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'findingId': findingId,
      'id': id,
      'location': ?location,
      'name': name,
      'project': project,
      'revisionId': revisionId,
      'snapshots': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionResult(
      createTime: map['createTime'] as String,
      findingId: map['findingId'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      project: map['project'] as String,
      revisionId: map['revisionId'] as String,
      snapshots: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionSnapshot>(map['snapshots']!, (value) => GetControlProjectIntelligenceFindingRevisionSnapshot.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
