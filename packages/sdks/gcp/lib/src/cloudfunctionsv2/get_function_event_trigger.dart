// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_event_trigger_event_filter.dart';

class GetFunctionEventTrigger {
  /// Criteria used to filter events.
  final pulumi.Input<List<GetFunctionEventTriggerEventFilter>> eventFilters;

  /// Required. The type of event to observe.
  final pulumi.Input<String> eventType;

  /// The name of a Pub/Sub topic in the same project that will be used
  /// as the transport topic for the event delivery.
  final pulumi.Input<String> pubsubTopic;

  /// Describes the retry policy in case of function's execution failure.
  /// Retried execution is charged as any other execution. Possible values: ["RETRY_POLICY_UNSPECIFIED", "RETRY_POLICY_DO_NOT_RETRY", "RETRY_POLICY_RETRY"]
  final pulumi.Input<String> retryPolicy;

  /// Optional. The email of the trigger's service account. The service account
  /// must have permission to invoke Cloud Run services. If empty, defaults to the
  /// Compute Engine default service account: {project_number}-compute@developer.gserviceaccount.com.
  final pulumi.Input<String> serviceAccountEmail;

  /// Output only. The resource name of the Eventarc trigger.
  final pulumi.Input<String> trigger;

  /// The region that the trigger will be in. The trigger will only receive
  /// events originating in this region. It can be the same
  /// region as the function, a different region or multi-region, or the global
  /// region. If not provided, defaults to the same region as the function.
  final pulumi.Input<String> triggerRegion;

  /// Creates a new [GetFunctionEventTrigger].
  /// [eventFilters] Criteria used to filter events.
  /// [eventType] Required. The type of event to observe.
  /// [pubsubTopic] The name of a Pub/Sub topic in the same project that will be used
  /// [retryPolicy] Describes the retry policy in case of function's execution failure.
  /// [serviceAccountEmail] Optional. The email of the trigger's service account. The service account
  /// [trigger] Output only. The resource name of the Eventarc trigger.
  /// [triggerRegion] The region that the trigger will be in. The trigger will only receive
  GetFunctionEventTrigger({
    required this.eventFilters,
    required this.eventType,
    required this.pubsubTopic,
    required this.retryPolicy,
    required this.serviceAccountEmail,
    required this.trigger,
    required this.triggerRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventFilters':
          pulumi.Input.mapInputValue<
            List<GetFunctionEventTriggerEventFilter>,
            List<Map<String, dynamic>>
          >(
            eventFilters,
            (value) =>
                pulumi.Input.encodeList<
                  GetFunctionEventTriggerEventFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eventType': eventType,
      'pubsubTopic': pubsubTopic,
      'retryPolicy': retryPolicy,
      'serviceAccountEmail': serviceAccountEmail,
      'trigger': trigger,
      'triggerRegion': triggerRegion,
    };
  }

  factory GetFunctionEventTrigger.fromMap(Map<String, dynamic> map) {
    return GetFunctionEventTrigger(
      eventFilters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetFunctionEventTriggerEventFilter>(
          map['eventFilters']!,
          (value) => GetFunctionEventTriggerEventFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
      retryPolicy: pulumi.Input.fromValue(map['retryPolicy'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(
        map['serviceAccountEmail'] as String,
      ),
      trigger: pulumi.Input.fromValue(map['trigger'] as String),
      triggerRegion: pulumi.Input.fromValue(map['triggerRegion'] as String),
    );
  }
}
