// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v1_condition_response.dart';
import 'resource_record_response.dart';

/// The current state of the Domain Mapping.
class DomainMappingStatusResponse {
  /// Array of observed DomainMappingConditions, indicating the current state of the DomainMapping.
  final pulumi.Input<List<GoogleCloudRunV1ConditionResponse>> conditions;
  /// The name of the route that the mapping currently points to.
  final pulumi.Input<String> mappedRouteName;
  /// ObservedGeneration is the 'Generation' of the DomainMapping that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  final pulumi.Input<int> observedGeneration;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final pulumi.Input<List<ResourceRecordResponse>> resourceRecords;
  /// Optional. Not supported by Cloud Run.
  final pulumi.Input<String> url;

  /// Creates a new [DomainMappingStatusResponse].
  /// [conditions] Array of observed DomainMappingConditions, indicating the current state of the DomainMapping.
  /// [mappedRouteName] The name of the route that the mapping currently points to.
  /// [observedGeneration] ObservedGeneration is the 'Generation' of the DomainMapping that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.
  /// [resourceRecords] The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  /// [url] Optional. Not supported by Cloud Run.
  const DomainMappingStatusResponse({
    required this.conditions,
    required this.mappedRouteName,
    required this.observedGeneration,
    required this.resourceRecords,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<GoogleCloudRunV1ConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GoogleCloudRunV1ConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mappedRouteName': mappedRouteName,
      'observedGeneration': observedGeneration,
      'resourceRecords': pulumi.Input.mapInputValue<List<ResourceRecordResponse>, List<Map<String, dynamic>>>(resourceRecords, (value) => pulumi.Input.encodeList<ResourceRecordResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': url,
    };
  }

  factory DomainMappingStatusResponse.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatusResponse(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV1ConditionResponse>(map['conditions']!, (value) => GoogleCloudRunV1ConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      mappedRouteName: pulumi.Input.fromValue(map['mappedRouteName'] as String),
      observedGeneration: pulumi.Input.fromValue(map['observedGeneration'] as int),
      resourceRecords: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceRecordResponse>(map['resourceRecords']!, (value) => ResourceRecordResponse.fromMap((value as Map).cast<String, dynamic>()))),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

