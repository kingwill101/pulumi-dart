// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revisions_revision_snapshot.dart';

class GetControlProjectIntelligenceFindingRevisionsRevision {
  /// The time when the finding was created.
  final pulumi.Input<String> createTime;
  /// The resource name of the finding.
  final pulumi.Input<String> name;
  /// The snapshot of the finding at revision creation time. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot>> snapshots;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsRevision].
  /// [createTime] The time when the finding was created.
  /// [name] The resource name of the finding.
  /// [snapshots] The snapshot of the finding at revision creation time. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionsRevision({
    required this.createTime,
    required this.name,
    required this.snapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'name': name,
      'snapshots': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot>, List<Map<String, dynamic>>>(snapshots, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsRevision.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsRevision(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      snapshots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot>(map['snapshots']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
