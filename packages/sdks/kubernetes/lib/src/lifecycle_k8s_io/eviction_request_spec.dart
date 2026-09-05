// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eviction_request_target.dart';

/// EvictionRequestSpec is a specification of an EvictionRequest.
class EvictionRequestSpec {
  /// intent specifies the action that should be taken for the specified target.
  ///
  /// - Eviction means that the requester is interested in the eviction of the target. - Withdrawn means that the requester is no longer interested in the eviction of the target.
  /// If all requesters' intents are withdrawn for a common target, the eviction will be canceled.
  /// Cancellation consequences:
  /// - Inactive responders will never run.
  /// - Active responders are expected to cancel the eviction.
  /// - Completed or Interrupted responders should not take any action.
  final pulumi.Input<String> intent;
  /// requester allows you to identify the entity, that requested the eviction of the target.
  ///
  /// It must be a valid domain-prefixed key (such as "acme.io/foo"). Domain names *.k8s.io and *.kubernetes.io are reserved. This field is required and immutable.
  final pulumi.Input<String> requester;
  /// target contains a reference to an object (e.g. a pod) that should be evicted. This field is required and immutable.
  final pulumi.Input<EvictionRequestTarget> target;

  /// Creates a new [EvictionRequestSpec].
  /// [intent] intent specifies the action that should be taken for the specified target.
  /// [requester] requester allows you to identify the entity, that requested the eviction of the target.
  /// [target] target contains a reference to an object (e.g. a pod) that should be evicted. This field is required and immutable.
  const EvictionRequestSpec({
    required this.intent,
    required this.requester,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intent': intent,
      'requester': requester,
      'target': pulumi.Input.mapInputValue<EvictionRequestTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory EvictionRequestSpec.fromMap(Map<String, dynamic> map) {
    return EvictionRequestSpec(
      intent: pulumi.Input.fromValue(map['intent'] as String),
      requester: pulumi.Input.fromValue(map['requester'] as String),
      target: pulumi.Input.fromValue(EvictionRequestTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}
