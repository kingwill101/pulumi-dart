// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'requester_patch.dart';
import 'responder_status_patch.dart';
import 'target_responder_patch.dart';

/// EvictionStatus represents the last observed status of the eviction request.
class EvictionStatusPatch {
  /// conditions contain information about the eviction request.
  ///
  /// Eviction specific conditions are: TargetEvicted or Failed (managed by evictionrequest-controller). - Failed means that the eviction request is no longer being processed
  /// by any eviction responder. This can happen if the request is canceled or if no responder
  /// managed to evict the target (e.g. terminate or delete a pod).
  /// - TargetEvicted means that the target has been evicted (e.g. a pod has been terminated or deleted).
  ///
  /// The maximum length of the conditions list is 100.
  final pulumi.Input<List<ConditionPatch>?>? conditions;
  /// observedGeneration is Eviction's .metadata.generation observed by the evictionrequest-controller. The observed generation value cannot be negative and can only be incremented. The minimum value is 1. This field is managed by evictionrequest-controller.
  final pulumi.Input<int?>? observedGeneration;
  /// requesters allow you to identify the entities, that requested the eviction of the target. If all the requesters withdraw their eviction intent, the eviction will be canceled.
  ///
  /// The maximum length of the requesters list is 100. If this limit is exceeded, requesters with Withdrawn intent should be dropped first.
  final pulumi.Input<List<RequesterPatch>?>? requesters;
  /// responders represents the eviction process status of each declared responder.
  ///
  /// The responder list should be the same length and have the same .name fields as .status.targetResponders. Only responders with .name that have Active state in .targetResponders[].state should be updated and can be mutated. First initialization of the list is allowed.
  ///
  /// Each ResponderStatus is initialized by evictionrequest-controller and then managed by the designated responder.
  final pulumi.Input<List<ResponderStatusPatch>?>? responders;
  /// targetResponders reference responders that should eventually respond to this eviction to help with the graceful eviction of a target. These responders are selected sequentially, according to their specified priority by setting the Active state to the TargetResponder .state field. The maximum number of active responders allowed is 1. Eventually each responder can end up in an Interrupted, Canceled or, Completed state. Responders should observe these states in order to navigate their lifecycle.
  ///
  /// If the target is a pod, the field is populated from Pod's .spec.evictionResponders. Default responders may be added to the list according to the target.
  ///
  /// Default responders: - imperative-eviction.k8s.io/evictor responder with a priority of 100 is added to the list if the
  /// target is a pod. It will call the imperative Eviction API (pods/&lt;name&gt;/eviction subresource).
  /// This call may not succeed due to PodDisruptionBudgets, which may block the pod termination.
  /// It will update the responder message and try again with a backoff.
  ///
  /// The maximum length of the responders list is 11. The length and keys of the list cannot change once set. This field is managed by evictionrequest-controller.
  final pulumi.Input<List<TargetResponderPatch>?>? targetResponders;

  /// Creates a new [EvictionStatusPatch].
  /// [conditions] conditions contain information about the eviction request.
  /// [observedGeneration] observedGeneration is Eviction's .metadata.generation observed by the evictionrequest-controller. The observed generation value cannot be negative and can only be incremented. The minimum value is 1. This field is managed by evictionrequest-controller.
  /// [requesters] requesters allow you to identify the entities, that requested the eviction of the target. If all the requesters withdraw their eviction intent, the eviction will be canceled.
  /// [responders] responders represents the eviction process status of each declared responder.
  /// [targetResponders] targetResponders reference responders that should eventually respond to this eviction to help with the graceful eviction of a target. These responders are selected sequentially, according to their specified priority by setting the Active state to the TargetResponder .state field. The maximum number of active responders allowed is 1. Eventually each responder can end up in an Interrupted, Canceled or, Completed state. Responders should observe these states in order to navigate their lifecycle.
  const EvictionStatusPatch({
    this.conditions,
    this.observedGeneration,
    this.requesters,
    this.responders,
    this.targetResponders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
      'requesters': ?pulumi.Input.mapOptionalInputValue<List<RequesterPatch>, List<Map<String, dynamic>>>(requesters, (value) => pulumi.Input.encodeList<RequesterPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responders': ?pulumi.Input.mapOptionalInputValue<List<ResponderStatusPatch>, List<Map<String, dynamic>>>(responders, (value) => pulumi.Input.encodeList<ResponderStatusPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResponders': ?pulumi.Input.mapOptionalInputValue<List<TargetResponderPatch>, List<Map<String, dynamic>>>(targetResponders, (value) => pulumi.Input.encodeList<TargetResponderPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EvictionStatusPatch.fromMap(Map<String, dynamic> map) {
    return EvictionStatusPatch(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionPatch>(guardedValue, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      requesters: (() { final guardedValue = map['requesters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RequesterPatch>(guardedValue, (value) => RequesterPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responders: (() { final guardedValue = map['responders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResponderStatusPatch>(guardedValue, (value) => ResponderStatusPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetResponders: (() { final guardedValue = map['targetResponders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetResponderPatch>(guardedValue, (value) => TargetResponderPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
