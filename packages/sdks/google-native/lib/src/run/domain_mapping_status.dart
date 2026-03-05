// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v1_condition.dart';
import 'resource_record.dart';

/// The current state of the Domain Mapping.
class DomainMappingStatus {
  /// Array of observed DomainMappingConditions, indicating the current state of the DomainMapping.
  final pulumi.Input<List<GoogleCloudRunV1Condition>>? conditions;
  /// The name of the route that the mapping currently points to.
  final pulumi.Input<String>? mappedRouteName;
  /// ObservedGeneration is the 'Generation' of the DomainMapping that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  final pulumi.Input<int>? observedGeneration;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final pulumi.Input<List<ResourceRecord>>? resourceRecords;
  /// Optional. Not supported by Cloud Run.
  final pulumi.Input<String>? url;

  /// Creates a new [DomainMappingStatus].
  /// [conditions] Array of observed DomainMappingConditions, indicating the current state of the DomainMapping.
  /// [mappedRouteName] The name of the route that the mapping currently points to.
  /// [observedGeneration] ObservedGeneration is the 'Generation' of the DomainMapping that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  /// [resourceRecords] The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  /// [url] Optional. Not supported by Cloud Run.
  DomainMappingStatus({
    this.conditions,
    this.mappedRouteName,
    this.observedGeneration,
    this.resourceRecords,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV1Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GoogleCloudRunV1Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mappedRouteName': ?mappedRouteName,
      'observedGeneration': ?observedGeneration,
      'resourceRecords': ?pulumi.Input.mapOptionalInputValue<List<ResourceRecord>, List<Map<String, dynamic>>>(resourceRecords, (value) => pulumi.Input.encodeList<ResourceRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': ?url,
    };
  }

  factory DomainMappingStatus.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV1Condition>(guardedValue, (value) => GoogleCloudRunV1Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mappedRouteName: (() { final guardedValue = map['mappedRouteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceRecords: (() { final guardedValue = map['resourceRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceRecord>(guardedValue, (value) => ResourceRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

