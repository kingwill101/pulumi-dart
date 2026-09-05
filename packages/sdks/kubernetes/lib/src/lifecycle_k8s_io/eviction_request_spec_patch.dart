// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eviction_request_target_patch.dart';

/// EvictionRequestSpec is a specification of an EvictionRequest.
class EvictionRequestSpecPatch {
  /// intent specifies the action that should be taken for the specified target.
  ///
  /// - Eviction means that the requester is interested in the eviction of the target. - Withdrawn means that the requester is no longer interested in the eviction of the target.
  /// If all requesters' intents are withdrawn for a common target, the eviction will be canceled.
  /// Cancellation consequences:
  /// - Inactive responders will never run.
  /// - Active responders are expected to cancel the eviction.
  /// - Completed or Interrupted responders should not take any action.
  final pulumi.Input<String?>? intent;
  /// requester allows you to identify the entity, that requested the eviction of the target.
  ///
  /// It must be a valid domain-prefixed key (such as "acme.io/foo"). Domain names *.k8s.io and *.kubernetes.io are reserved. This field is required and immutable.
  final pulumi.Input<String?>? requester;
  /// target contains a reference to an object (e.g. a pod) that should be evicted. This field is required and immutable.
  final pulumi.Input<EvictionRequestTargetPatch?>? target;

  /// Creates a new [EvictionRequestSpecPatch].
  /// [intent] intent specifies the action that should be taken for the specified target.
  /// [requester] requester allows you to identify the entity, that requested the eviction of the target.
  /// [target] target contains a reference to an object (e.g. a pod) that should be evicted. This field is required and immutable.
  const EvictionRequestSpecPatch({
    this.intent,
    this.requester,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intent': ?intent,
      'requester': ?requester,
      'target': ?pulumi.Input.mapOptionalInputValue<EvictionRequestTargetPatch, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory EvictionRequestSpecPatch.fromMap(Map<String, dynamic> map) {
    return EvictionRequestSpecPatch(
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requester: (() { final guardedValue = map['requester']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionRequestTargetPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
