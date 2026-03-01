// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_event_trigger_failure_policy.dart';

class GetFunctionEventTrigger {
  /// The type of event to observe. For example: `"google.storage.object.finalize"`.
  /// See the documentation on [calling Cloud Functions](https://cloud.google.com/functions/docs/calling/)
  /// for a full reference of accepted triggers.
  final String eventType;
  /// Policy for failed executions. Structure is documented below.
  final List<GetFunctionEventTriggerFailurePolicy> failurePolicies;
  /// The name of the resource whose events are being observed, for example, `"myBucket"`
  final String resource;

  /// Creates a new [GetFunctionEventTrigger].
  /// [eventType] The type of event to observe. For example: `"google.storage.object.finalize"`.
  /// [failurePolicies] Policy for failed executions. Structure is documented below.
  /// [resource] The name of the resource whose events are being observed, for example, `"myBucket"`
  GetFunctionEventTrigger({
    required this.eventType,
    required this.failurePolicies,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
      'failurePolicies': pulumi.Input.encodeList<GetFunctionEventTriggerFailurePolicy, Map<String, dynamic>>(failurePolicies, (value) => value.toMap()),
      'resource': resource,
    };
  }

  factory GetFunctionEventTrigger.fromMap(Map<String, dynamic> map) {
    return GetFunctionEventTrigger(
      eventType: map['eventType'] as String,
      failurePolicies: pulumi.Input.decodeList<GetFunctionEventTriggerFailurePolicy>(map['failurePolicies'], (value) => GetFunctionEventTriggerFailurePolicy.fromMap((value as Map).cast<String, dynamic>())),
      resource: map['resource'] as String,
    );
  }
}

