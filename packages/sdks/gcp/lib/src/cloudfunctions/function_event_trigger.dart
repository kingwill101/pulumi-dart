// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_event_trigger_failure_policy.dart';

class FunctionEventTrigger {
  /// The type of event to observe. For example: `"google.storage.object.finalize"`.
  /// See the documentation on [calling Cloud Functions](https://cloud.google.com/functions/docs/calling/) for a
  /// full reference of accepted triggers.
  final pulumi.Input<String> eventType;
  /// Specifies policy for failed executions. Structure is documented below.
  final pulumi.Input<FunctionEventTriggerFailurePolicy>? failurePolicy;
  /// Required. The name or partial URI of the resource from
  /// which to observe events. For example, `"myBucket"` or `"projects/my-project/topics/my-topic"`
  final pulumi.Input<String> resource;

  /// Creates a new [FunctionEventTrigger].
  /// [eventType] The type of event to observe. For example: `"google.storage.object.finalize"`.
  /// [failurePolicy] Specifies policy for failed executions. Structure is documented below.
  /// [resource] Required. The name or partial URI of the resource from
  FunctionEventTrigger({
    required this.eventType,
    this.failurePolicy,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
      'failurePolicy': ?pulumi.Input.mapOptionalInputValue<FunctionEventTriggerFailurePolicy, Map<String, dynamic>>(failurePolicy, (value) => value.toMap()),
      'resource': resource,
    };
  }

  factory FunctionEventTrigger.fromMap(Map<String, dynamic> map) {
    return FunctionEventTrigger(
      eventType: (map['eventType'] as String).input(),
      failurePolicy: map['failurePolicy'] == null ? null : (FunctionEventTriggerFailurePolicy.fromMap((map['failurePolicy'] as Map).cast<String, dynamic>())).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

