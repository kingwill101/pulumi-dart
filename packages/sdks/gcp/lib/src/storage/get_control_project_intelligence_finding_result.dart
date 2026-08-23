// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_coldline_and_archival_storage_operations_spike.dart';
import 'get_control_project_intelligence_finding_cross_region_egress_spike.dart';
import 'get_control_project_intelligence_finding_observation_period.dart';
import 'get_control_project_intelligence_finding_storage_growth_above_trend.dart';
import 'get_control_project_intelligence_finding_throttled_requests_spike.dart';

/// Result data returned by getControlProjectIntelligenceFinding.
class GetControlProjectIntelligenceFindingResult {
  /// Google Cloud resource names that are relevant to the IntelligenceFinding. This list also includes the targetResource.
  final List<String> associatedResources;
  /// The category of the finding.
  final String category;
  /// A finding about a spike in Class A or Class B operations on Coldline or Archive Cloud Storage objects. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike> coldlineAndArchivalStorageOperationsSpikes;
  /// The time when the finding was created.
  final String createTime;
  /// A finding about a spike in cross-region egress from Cloud Storage. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingCrossRegionEgressSpike> crossRegionEgressSpikes;
  /// A short description of the finding.
  final String description;
  final String findingId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  /// The resource name of the finding.
  final String name;
  /// The time interval from which the underlying data generated this IntelligenceFinding was observed. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingObservationPeriod> observationPeriods;
  final String project;
  /// The severity of the finding.
  final String severity;
  /// A finding about a spike in storage growth (bytes or object count) that is outside the normal historical trend. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingStorageGrowthAboveTrend> storageGrowthAboveTrends;
  /// The fully qualified resource name of the resource that this IntelligenceFinding applies to.
  final String targetResource;
  /// A finding about a spike in throttled requests (429 errors) within a project. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingThrottledRequestsSpike> throttledRequestsSpikes;
  /// The type of this finding.
  final String type;
  /// The time when the finding was last updated.
  final String updateTime;

  /// Creates a new [GetControlProjectIntelligenceFindingResult].
  /// [associatedResources] Google Cloud resource names that are relevant to the IntelligenceFinding. This list also includes the targetResource.
  /// [category] The category of the finding.
  /// [coldlineAndArchivalStorageOperationsSpikes] A finding about a spike in Class A or Class B operations on Coldline or Archive Cloud Storage objects. Structure is documented below.
  /// [createTime] The time when the finding was created.
  /// [crossRegionEgressSpikes] A finding about a spike in cross-region egress from Cloud Storage. Structure is documented below.
  /// [description] A short description of the finding.
  /// [findingId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The resource name of the finding.
  /// [observationPeriods] The time interval from which the underlying data generated this IntelligenceFinding was observed. Structure is documented below.
  /// [project] Required.
  /// [severity] The severity of the finding.
  /// [storageGrowthAboveTrends] A finding about a spike in storage growth (bytes or object count) that is outside the normal historical trend. Structure is documented below.
  /// [targetResource] The fully qualified resource name of the resource that this IntelligenceFinding applies to.
  /// [throttledRequestsSpikes] A finding about a spike in throttled requests (429 errors) within a project. Structure is documented below.
  /// [type] The type of this finding.
  /// [updateTime] The time when the finding was last updated.
  const GetControlProjectIntelligenceFindingResult({
    required this.associatedResources,
    required this.category,
    required this.coldlineAndArchivalStorageOperationsSpikes,
    required this.createTime,
    required this.crossRegionEgressSpikes,
    required this.description,
    required this.findingId,
    required this.id,
    this.location,
    required this.name,
    required this.observationPeriods,
    required this.project,
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
      'coldlineAndArchivalStorageOperationsSpikes': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike, Map<String, dynamic>>(coldlineAndArchivalStorageOperationsSpikes, (value) => value.toMap()),
      'createTime': createTime,
      'crossRegionEgressSpikes': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingCrossRegionEgressSpike, Map<String, dynamic>>(crossRegionEgressSpikes, (value) => value.toMap()),
      'description': description,
      'findingId': findingId,
      'id': id,
      'location': ?location,
      'name': name,
      'observationPeriods': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingObservationPeriod, Map<String, dynamic>>(observationPeriods, (value) => value.toMap()),
      'project': project,
      'severity': severity,
      'storageGrowthAboveTrends': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingStorageGrowthAboveTrend, Map<String, dynamic>>(storageGrowthAboveTrends, (value) => value.toMap()),
      'targetResource': targetResource,
      'throttledRequestsSpikes': pulumi.Input.encodeList<GetControlProjectIntelligenceFindingThrottledRequestsSpike, Map<String, dynamic>>(throttledRequestsSpikes, (value) => value.toMap()),
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetControlProjectIntelligenceFindingResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingResult(
      associatedResources: (map['associatedResources'] as List).cast<String>(),
      category: map['category'] as String,
      coldlineAndArchivalStorageOperationsSpikes: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike>(map['coldlineAndArchivalStorageOperationsSpikes']!, (value) => GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      crossRegionEgressSpikes: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingCrossRegionEgressSpike>(map['crossRegionEgressSpikes']!, (value) => GetControlProjectIntelligenceFindingCrossRegionEgressSpike.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      findingId: map['findingId'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      observationPeriods: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingObservationPeriod>(map['observationPeriods']!, (value) => GetControlProjectIntelligenceFindingObservationPeriod.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      severity: map['severity'] as String,
      storageGrowthAboveTrends: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingStorageGrowthAboveTrend>(map['storageGrowthAboveTrends']!, (value) => GetControlProjectIntelligenceFindingStorageGrowthAboveTrend.fromMap((value as Map).cast<String, dynamic>())),
      targetResource: map['targetResource'] as String,
      throttledRequestsSpikes: pulumi.Input.decodeList<GetControlProjectIntelligenceFindingThrottledRequestsSpike>(map['throttledRequestsSpikes']!, (value) => GetControlProjectIntelligenceFindingThrottledRequestsSpike.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
