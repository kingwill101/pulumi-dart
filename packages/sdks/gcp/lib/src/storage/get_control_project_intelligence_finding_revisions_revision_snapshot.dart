// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revisions_revision_snapshot_coldline_and_archival_storage_operations_spike.dart';
import 'get_control_project_intelligence_finding_revisions_revision_snapshot_cross_region_egress_spike.dart';
import 'get_control_project_intelligence_finding_revisions_revision_snapshot_observation_period.dart';
import 'get_control_project_intelligence_finding_revisions_revision_snapshot_storage_growth_above_trend.dart';
import 'get_control_project_intelligence_finding_revisions_revision_snapshot_throttled_requests_spike.dart';

class GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot {
  /// Google Cloud resource names that are relevant to the IntelligenceFinding. This list also includes the targetResource.
  final pulumi.Input<List<String>> associatedResources;
  /// The category of the finding.
  final pulumi.Input<String> category;
  /// A finding about a spike in Class A or Class B operations on Coldline or Archive Cloud Storage objects. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpike>> coldlineAndArchivalStorageOperationsSpikes;
  /// The time when the finding was created.
  final pulumi.Input<String> createTime;
  /// A finding about a spike in cross-region egress from Cloud Storage. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotCrossRegionEgressSpike>> crossRegionEgressSpikes;
  /// A short description of the finding.
  final pulumi.Input<String> description;
  /// The resource name of the finding.
  final pulumi.Input<String> name;
  /// The time interval from which the underlying data generated this IntelligenceFinding was observed. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod>> observationPeriods;
  /// The severity of the finding.
  final pulumi.Input<String> severity;
  /// A finding about a spike in storage growth (bytes or object count) that is outside the normal historical trend. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend>> storageGrowthAboveTrends;
  /// The fully qualified resource name of the resource that this IntelligenceFinding applies to.
  final pulumi.Input<String> targetResource;
  /// A finding about a spike in throttled requests (429 errors) within a project. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike>> throttledRequestsSpikes;
  /// The type of this finding.
  final pulumi.Input<String> type;
  /// The time when the finding was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot].
  /// [associatedResources] Google Cloud resource names that are relevant to the IntelligenceFinding. This list also includes the targetResource.
  /// [category] The category of the finding.
  /// [coldlineAndArchivalStorageOperationsSpikes] A finding about a spike in Class A or Class B operations on Coldline or Archive Cloud Storage objects. Structure is documented below.
  /// [createTime] The time when the finding was created.
  /// [crossRegionEgressSpikes] A finding about a spike in cross-region egress from Cloud Storage. Structure is documented below.
  /// [description] A short description of the finding.
  /// [name] The resource name of the finding.
  /// [observationPeriods] The time interval from which the underlying data generated this IntelligenceFinding was observed. Structure is documented below.
  /// [severity] The severity of the finding.
  /// [storageGrowthAboveTrends] A finding about a spike in storage growth (bytes or object count) that is outside the normal historical trend. Structure is documented below.
  /// [targetResource] The fully qualified resource name of the resource that this IntelligenceFinding applies to.
  /// [throttledRequestsSpikes] A finding about a spike in throttled requests (429 errors) within a project. Structure is documented below.
  /// [type] The type of this finding.
  /// [updateTime] The time when the finding was last updated.
  const GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot({
    required this.associatedResources,
    required this.category,
    required this.coldlineAndArchivalStorageOperationsSpikes,
    required this.createTime,
    required this.crossRegionEgressSpikes,
    required this.description,
    required this.name,
    required this.observationPeriods,
    required this.severity,
    required this.storageGrowthAboveTrends,
    required this.targetResource,
    required this.throttledRequestsSpikes,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedResources': associatedResources,
      'category': category,
      'coldlineAndArchivalStorageOperationsSpikes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpike>, List<Map<String, dynamic>>>(coldlineAndArchivalStorageOperationsSpikes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpike, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'crossRegionEgressSpikes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotCrossRegionEgressSpike>, List<Map<String, dynamic>>>(crossRegionEgressSpikes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotCrossRegionEgressSpike, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'name': name,
      'observationPeriods': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod>, List<Map<String, dynamic>>>(observationPeriods, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severity': severity,
      'storageGrowthAboveTrends': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend>, List<Map<String, dynamic>>>(storageGrowthAboveTrends, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResource': targetResource,
      'throttledRequestsSpikes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike>, List<Map<String, dynamic>>>(throttledRequestsSpikes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsRevisionSnapshot(
      associatedResources: pulumi.Input.fromValue((map['associatedResources'] as List).cast<String>()),
      category: pulumi.Input.fromValue(map['category'] as String),
      coldlineAndArchivalStorageOperationsSpikes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpike>(map['coldlineAndArchivalStorageOperationsSpikes']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpike.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      crossRegionEgressSpikes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotCrossRegionEgressSpike>(map['crossRegionEgressSpikes']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotCrossRegionEgressSpike.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      observationPeriods: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod>(map['observationPeriods']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod.fromMap((value as Map).cast<String, dynamic>()))),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      storageGrowthAboveTrends: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend>(map['storageGrowthAboveTrends']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend.fromMap((value as Map).cast<String, dynamic>()))),
      targetResource: pulumi.Input.fromValue(map['targetResource'] as String),
      throttledRequestsSpikes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike>(map['throttledRequestsSpikes']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
