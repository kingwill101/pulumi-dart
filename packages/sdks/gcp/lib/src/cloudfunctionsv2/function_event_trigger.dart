// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_event_trigger_event_filter.dart';

class FunctionEventTrigger {
  /// Criteria used to filter events.
  /// Structure is documented below.
  final List<FunctionEventTriggerEventFilter>? eventFilters;
  /// Required. The type of event to observe.
  final String eventType;
  /// The name of a Pub/Sub topic in the same project that will be used
  /// as the transport topic for the event delivery.
  final String? pubsubTopic;
  /// Describes the retry policy in case of function's execution failure.
  /// Retried execution is charged as any other execution.
  /// Possible values are: `RETRY_POLICY_UNSPECIFIED`, `RETRY_POLICY_DO_NOT_RETRY`, `RETRY_POLICY_RETRY`.
  final String? retryPolicy;
  /// Optional. The email of the trigger's service account. The service account
  /// must have permission to invoke Cloud Run services. If empty, defaults to the
  /// Compute Engine default service account: {project_number}-compute@developer.gserviceaccount.com.
  final String? serviceAccountEmail;
  /// (Output)
  /// Output only. The resource name of the Eventarc trigger.
  final String? trigger;
  /// The region that the trigger will be in. The trigger will only receive
  /// events originating in this region. It can be the same
  /// region as the function, a different region or multi-region, or the global
  /// region. If not provided, defaults to the same region as the function.
  final String? triggerRegion;

  /// Creates a new [FunctionEventTrigger].
  /// [eventFilters] Criteria used to filter events.
  /// [eventType] Required. The type of event to observe.
  /// [pubsubTopic] The name of a Pub/Sub topic in the same project that will be used
  /// [retryPolicy] Describes the retry policy in case of function's execution failure.
  /// [serviceAccountEmail] Optional. The email of the trigger's service account. The service account
  /// [trigger] (Output)
  /// [triggerRegion] The region that the trigger will be in. The trigger will only receive
  FunctionEventTrigger({
    this.eventFilters,
    required this.eventType,
    this.pubsubTopic,
    this.retryPolicy,
    this.serviceAccountEmail,
    this.trigger,
    this.triggerRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventFilters': ?eventFilters == null ? null : pulumi.Input.encodeList<FunctionEventTriggerEventFilter, Map<String, dynamic>>(eventFilters!, (value) => value.toMap()),
      'eventType': eventType,
      'pubsubTopic': ?pubsubTopic,
      'retryPolicy': ?retryPolicy,
      'serviceAccountEmail': ?serviceAccountEmail,
      'trigger': ?trigger,
      'triggerRegion': ?triggerRegion,
    };
  }

  factory FunctionEventTrigger.fromMap(Map<String, dynamic> map) {
    return FunctionEventTrigger(
      eventFilters: map['eventFilters'] == null ? null : pulumi.Input.decodeList<FunctionEventTriggerEventFilter>(map['eventFilters'], (value) => FunctionEventTriggerEventFilter.fromMap((value as Map).cast<String, dynamic>())),
      eventType: map['eventType'] as String,
      pubsubTopic: map['pubsubTopic'] == null ? null : map['pubsubTopic'] as String,
      retryPolicy: map['retryPolicy'] == null ? null : map['retryPolicy'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : map['serviceAccountEmail'] as String,
      trigger: map['trigger'] == null ? null : map['trigger'] as String,
      triggerRegion: map['triggerRegion'] == null ? null : map['triggerRegion'] as String,
    );
  }
}

