// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_event_trigger_event_filter.dart';

class FunctionEventTrigger {
  /// Criteria used to filter events.
  /// Structure is documented below.
  final pulumi.Input<List<FunctionEventTriggerEventFilter>>? eventFilters;

  /// Required. The type of event to observe.
  final pulumi.Input<String> eventType;

  /// The name of a Pub/Sub topic in the same project that will be used
  /// as the transport topic for the event delivery.
  final pulumi.Input<String>? pubsubTopic;

  /// Describes the retry policy in case of function's execution failure.
  /// Retried execution is charged as any other execution.
  /// Possible values are: `RETRY_POLICY_UNSPECIFIED`, `RETRY_POLICY_DO_NOT_RETRY`, `RETRY_POLICY_RETRY`.
  final pulumi.Input<String>? retryPolicy;

  /// Optional. The email of the trigger's service account. The service account
  /// must have permission to invoke Cloud Run services. If empty, defaults to the
  /// Compute Engine default service account: {project_number}-compute@developer.gserviceaccount.com.
  final pulumi.Input<String>? serviceAccountEmail;

  /// (Output)
  /// Output only. The resource name of the Eventarc trigger.
  final pulumi.Input<String>? trigger;

  /// The region that the trigger will be in. The trigger will only receive
  /// events originating in this region. It can be the same
  /// region as the function, a different region or multi-region, or the global
  /// region. If not provided, defaults to the same region as the function.
  final pulumi.Input<String>? triggerRegion;

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
      'eventFilters':
          ?pulumi.Input.mapOptionalInputValue<
            List<FunctionEventTriggerEventFilter>,
            List<Map<String, dynamic>>
          >(
            eventFilters,
            (value) =>
                pulumi.Input.encodeList<
                  FunctionEventTriggerEventFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      eventFilters: (() {
        final guardedValue = map['eventFilters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FunctionEventTriggerEventFilter>(
            guardedValue,
            (value) => FunctionEventTriggerEventFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      pubsubTopic: (() {
        final guardedValue = map['pubsubTopic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retryPolicy: (() {
        final guardedValue = map['retryPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccountEmail: (() {
        final guardedValue = map['serviceAccountEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trigger: (() {
        final guardedValue = map['trigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerRegion: (() {
        final guardedValue = map['triggerRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
