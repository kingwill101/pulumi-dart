// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_status_condition.dart';
import 'domain_mapping_status_resource_record.dart';

class DomainMappingStatus {
  /// (Output)
  /// Array of observed DomainMappingConditions, indicating the current state
  /// of the DomainMapping.
  /// Structure is documented below.
  final pulumi.Input<List<DomainMappingStatusCondition>>? conditions;
  /// (Output)
  /// The name of the route that the mapping currently points to.
  final pulumi.Input<String>? mappedRouteName;
  /// (Output)
  /// ObservedGeneration is the 'Generation' of the DomainMapping that
  /// was last processed by the controller.
  final pulumi.Input<int>? observedGeneration;
  /// The resource records required to configure this domain mapping. These
  /// records must be added to the domain's DNS configuration in order to
  /// serve the application via this domain mapping.
  /// Structure is documented below.
  final pulumi.Input<List<DomainMappingStatusResourceRecord>>? resourceRecords;

  /// Creates a new [DomainMappingStatus].
  /// [conditions] (Output)
  /// [mappedRouteName] (Output)
  /// [observedGeneration] (Output)
  /// [resourceRecords] The resource records required to configure this domain mapping. These
  const DomainMappingStatus({
    this.conditions,
    this.mappedRouteName,
    this.observedGeneration,
    this.resourceRecords,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<DomainMappingStatusCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DomainMappingStatusCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mappedRouteName': ?mappedRouteName,
      'observedGeneration': ?observedGeneration,
      'resourceRecords': ?pulumi.Input.mapOptionalInputValue<List<DomainMappingStatusResourceRecord>, List<Map<String, dynamic>>>(resourceRecords, (value) => pulumi.Input.encodeList<DomainMappingStatusResourceRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainMappingStatus.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainMappingStatusCondition>(guardedValue, (value) => DomainMappingStatusCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mappedRouteName: (() { final guardedValue = map['mappedRouteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceRecords: (() { final guardedValue = map['resourceRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainMappingStatusResourceRecord>(guardedValue, (value) => DomainMappingStatusResourceRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
