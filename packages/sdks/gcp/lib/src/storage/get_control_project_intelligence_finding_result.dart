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
  final List<String>? associatedResources;
  /// The category of the finding.
  final String? category;
  /// A finding about a spike in Class A or Class B operations on Coldline or Archive Cloud Storage objects. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike>? coldlineAndArchivalStorageOperationsSpikes;
  /// The time when the finding was created.
  final String? createTime;
  /// A finding about a spike in cross-region egress from Cloud Storage. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingCrossRegionEgressSpike>? crossRegionEgressSpikes;
  /// A short description of the finding.
  final String? description;
  final String? findingId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The resource name of the finding.
  final String? name;
  /// The time interval from which the underlying data generated this IntelligenceFinding was observed. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingObservationPeriod>? observationPeriods;
  final String? project;
  /// The severity of the finding.
  final String? severity;
  /// A finding about a spike in storage growth (bytes or object count) that is outside the normal historical trend. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingStorageGrowthAboveTrend>? storageGrowthAboveTrends;
  /// The fully qualified resource name of the resource that this IntelligenceFinding applies to.
  final String? targetResource;
  /// A finding about a spike in throttled requests (429 errors) within a project. Structure is documented below.
  final List<GetControlProjectIntelligenceFindingThrottledRequestsSpike>? throttledRequestsSpikes;
  /// The type of this finding.
  final String? type;
  /// The time when the finding was last updated.
  final String? updateTime;

  /// Creates a new [GetControlProjectIntelligenceFindingResult].
  /// [associatedResources] Google Cloud resource names that are relevant to the IntelligenceFinding. This list also includes the targetResource.
  /// [category] The category of the finding.
  /// [coldlineAndArchivalStorageOperationsSpikes] A finding about a spike in Class A or Class B operations on Coldline or Archive Cloud Storage objects. Structure is documented below.
  /// [createTime] The time when the finding was created.
  /// [crossRegionEgressSpikes] A finding about a spike in cross-region egress from Cloud Storage. Structure is documented below.
  /// [description] A short description of the finding.
  /// [findingId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The resource name of the finding.
  /// [observationPeriods] The time interval from which the underlying data generated this IntelligenceFinding was observed. Structure is documented below.
  /// [project] Optional.
  /// [severity] The severity of the finding.
  /// [storageGrowthAboveTrends] A finding about a spike in storage growth (bytes or object count) that is outside the normal historical trend. Structure is documented below.
  /// [targetResource] The fully qualified resource name of the resource that this IntelligenceFinding applies to.
  /// [throttledRequestsSpikes] A finding about a spike in throttled requests (429 errors) within a project. Structure is documented below.
  /// [type] The type of this finding.
  /// [updateTime] The time when the finding was last updated.
  const GetControlProjectIntelligenceFindingResult({
    this.associatedResources,
    this.category,
    this.coldlineAndArchivalStorageOperationsSpikes,
    this.createTime,
    this.crossRegionEgressSpikes,
    this.description,
    this.findingId,
    this.id,
    this.location,
    this.name,
    this.observationPeriods,
    this.project,
    this.severity,
    this.storageGrowthAboveTrends,
    this.targetResource,
    this.throttledRequestsSpikes,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedResources': ?associatedResources,
      'category': ?category,
      'coldlineAndArchivalStorageOperationsSpikes': ?(() { final guardedValue = coldlineAndArchivalStorageOperationsSpikes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'crossRegionEgressSpikes': ?(() { final guardedValue = crossRegionEgressSpikes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceFindingCrossRegionEgressSpike, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'findingId': ?findingId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'observationPeriods': ?(() { final guardedValue = observationPeriods; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceFindingObservationPeriod, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'severity': ?severity,
      'storageGrowthAboveTrends': ?(() { final guardedValue = storageGrowthAboveTrends; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceFindingStorageGrowthAboveTrend, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targetResource': ?targetResource,
      'throttledRequestsSpikes': ?(() { final guardedValue = throttledRequestsSpikes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceFindingThrottledRequestsSpike, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetControlProjectIntelligenceFindingResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingResult(
      associatedResources: (() { final guardedValue = map['associatedResources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coldlineAndArchivalStorageOperationsSpikes: (() { final guardedValue = map['coldlineAndArchivalStorageOperationsSpikes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike>(guardedValue, (value) => GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      crossRegionEgressSpikes: (() { final guardedValue = map['crossRegionEgressSpikes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceFindingCrossRegionEgressSpike>(guardedValue, (value) => GetControlProjectIntelligenceFindingCrossRegionEgressSpike.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findingId: (() { final guardedValue = map['findingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      observationPeriods: (() { final guardedValue = map['observationPeriods']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceFindingObservationPeriod>(guardedValue, (value) => GetControlProjectIntelligenceFindingObservationPeriod.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageGrowthAboveTrends: (() { final guardedValue = map['storageGrowthAboveTrends']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceFindingStorageGrowthAboveTrend>(guardedValue, (value) => GetControlProjectIntelligenceFindingStorageGrowthAboveTrend.fromMap((value as Map).cast<String, dynamic>())); })(),
      targetResource: (() { final guardedValue = map['targetResource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      throttledRequestsSpikes: (() { final guardedValue = map['throttledRequestsSpikes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceFindingThrottledRequestsSpike>(guardedValue, (value) => GetControlProjectIntelligenceFindingThrottledRequestsSpike.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
