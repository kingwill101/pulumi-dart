// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding_coldline_and_archival_storage_operations_spike.dart';
import 'get_control_project_intelligence_findings_finding_cross_region_egress_spike.dart';
import 'get_control_project_intelligence_findings_finding_observation_period.dart';
import 'get_control_project_intelligence_findings_finding_storage_growth_above_trend.dart';
import 'get_control_project_intelligence_findings_finding_throttled_requests_spike.dart';

class GetControlProjectIntelligenceFindingsFinding {
  /// Resources associated with the finding.
  final pulumi.Input<List<String>> associatedResources;
  /// The category of the finding.
  final pulumi.Input<String> category;
  /// A finding about a spike in Class A or Class B operations on Coldline or Archive Cloud Storage objects. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike>> coldlineAndArchivalStorageOperationsSpikes;
  /// The time at which the finding was created.
  final pulumi.Input<String> createTime;
  /// A finding about a spike in cross-region egress from Cloud Storage. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike>> crossRegionEgressSpikes;
  /// A description of the finding.
  final pulumi.Input<String> description;
  /// The resource name of the finding.
  final pulumi.Input<String> name;
  /// The observation period of the finding. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingObservationPeriod>> observationPeriods;
  /// The severity of the finding.
  final pulumi.Input<String> severity;
  /// A finding about a spike in storage growth (bytes or object count) that is outside the normal historical trend. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrend>> storageGrowthAboveTrends;
  /// The resource that the finding is about.
  final pulumi.Input<String> targetResource;
  /// A finding about a spike in throttled requests (429 errors) within a project. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike>> throttledRequestsSpikes;
  /// The type of the finding.
  final pulumi.Input<String> type;
  /// The time at which the finding was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetControlProjectIntelligenceFindingsFinding].
  /// [associatedResources] Resources associated with the finding.
  /// [category] The category of the finding.
  /// [coldlineAndArchivalStorageOperationsSpikes] A finding about a spike in Class A or Class B operations on Coldline or Archive Cloud Storage objects. Structure is documented below.
  /// [createTime] The time at which the finding was created.
  /// [crossRegionEgressSpikes] A finding about a spike in cross-region egress from Cloud Storage. Structure is documented below.
  /// [description] A description of the finding.
  /// [name] The resource name of the finding.
  /// [observationPeriods] The observation period of the finding. Structure is documented below.
  /// [severity] The severity of the finding.
  /// [storageGrowthAboveTrends] A finding about a spike in storage growth (bytes or object count) that is outside the normal historical trend. Structure is documented below.
  /// [targetResource] The resource that the finding is about.
  /// [throttledRequestsSpikes] A finding about a spike in throttled requests (429 errors) within a project. Structure is documented below.
  /// [type] The type of the finding.
  /// [updateTime] The time at which the finding was last updated.
  const GetControlProjectIntelligenceFindingsFinding({
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
      'coldlineAndArchivalStorageOperationsSpikes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike>, List<Map<String, dynamic>>>(coldlineAndArchivalStorageOperationsSpikes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'crossRegionEgressSpikes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike>, List<Map<String, dynamic>>>(crossRegionEgressSpikes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'name': name,
      'observationPeriods': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingObservationPeriod>, List<Map<String, dynamic>>>(observationPeriods, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingObservationPeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severity': severity,
      'storageGrowthAboveTrends': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrend>, List<Map<String, dynamic>>>(storageGrowthAboveTrends, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResource': targetResource,
      'throttledRequestsSpikes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike>, List<Map<String, dynamic>>>(throttledRequestsSpikes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetControlProjectIntelligenceFindingsFinding.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFinding(
      associatedResources: pulumi.Input.fromValue((map['associatedResources'] as List).cast<String>()),
      category: pulumi.Input.fromValue(map['category'] as String),
      coldlineAndArchivalStorageOperationsSpikes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike>(map['coldlineAndArchivalStorageOperationsSpikes']!, (value) => GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      crossRegionEgressSpikes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike>(map['crossRegionEgressSpikes']!, (value) => GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      observationPeriods: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingObservationPeriod>(map['observationPeriods']!, (value) => GetControlProjectIntelligenceFindingsFindingObservationPeriod.fromMap((value as Map).cast<String, dynamic>()))),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      storageGrowthAboveTrends: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrend>(map['storageGrowthAboveTrends']!, (value) => GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrend.fromMap((value as Map).cast<String, dynamic>()))),
      targetResource: pulumi.Input.fromValue(map['targetResource'] as String),
      throttledRequestsSpikes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike>(map['throttledRequestsSpikes']!, (value) => GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
