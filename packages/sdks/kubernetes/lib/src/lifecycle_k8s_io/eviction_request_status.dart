// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';

/// EvictionRequestStatus represents the last observed status of the eviction request.
class EvictionRequestStatus {
  /// conditions contain information about the eviction request.
  ///
  /// EvictionRequest specific conditions are: TargetEvicted or Failed (managed by evictionrequest-controller). - Failed means that the eviction request is no longer being processed
  /// by any eviction responder. This can happen if the request is canceled or if no responder
  /// managed to evict the target (e.g. terminate or delete a pod).
  /// - TargetEvicted means that the target has been evicted (e.g. a pod has been terminated or deleted).
  ///
  /// These conditions can be reset if the eviction was unsuccessful and a new Eviction intent has been submitted.
  ///
  /// The maximum length of the conditions list is 100.
  final pulumi.Input<List<Condition>?>? conditions;
  /// observedGeneration is EvictionRequest's .metadata.generation observed by the evictionrequest-controller. The observed generation value cannot be negative and can only be incremented. The minimum value is 1. This field is managed by evictionrequest-controller.
  final pulumi.Input<int?>? observedGeneration;

  /// Creates a new [EvictionRequestStatus].
  /// [conditions] conditions contain information about the eviction request.
  /// [observedGeneration] observedGeneration is EvictionRequest's .metadata.generation observed by the evictionrequest-controller. The observed generation value cannot be negative and can only be incremented. The minimum value is 1. This field is managed by evictionrequest-controller.
  const EvictionRequestStatus({
    this.conditions,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
    };
  }

  factory EvictionRequestStatus.fromMap(Map<String, dynamic> map) {
    return EvictionRequestStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
