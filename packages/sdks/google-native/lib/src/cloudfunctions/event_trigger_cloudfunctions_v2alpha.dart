// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_filter_cloudfunctions_v2alpha.dart';
import 'event_trigger_retry_policy_cloudfunctions_v2alpha.dart';

/// Describes EventTrigger, used to request events to be sent from another service.
class EventTriggerCloudfunctionsV2alpha {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final pulumi.Input<String>? channel;
  /// Criteria used to filter events.
  final pulumi.Input<List<EventFilterCloudfunctionsV2alpha>>? eventFilters;
  /// The type of event to observe. For example: `google.cloud.audit.log.v1.written` or `google.cloud.pubsub.topic.v1.messagePublished`.
  final pulumi.Input<String> eventType;
  /// Optional. The name of a Pub/Sub topic in the same project that will be used as the transport topic for the event delivery. Format: `projects/{project}/topics/{topic}`. This is only valid for events of type `google.cloud.pubsub.topic.v1.messagePublished`. The topic provided here will not be deleted at function deletion.
  final pulumi.Input<String>? pubsubTopic;
  /// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
  final pulumi.Input<EventTriggerRetryPolicyCloudfunctionsV2alpha>? retryPolicy;
  /// Optional. The email of the trigger's service account. The service account must have permission to invoke Cloud Run services, the permission is `run.routes.invoke`. If empty, defaults to the Compute Engine default service account: `{project_number}-compute@developer.gserviceaccount.com`.
  final pulumi.Input<String>? serviceAccountEmail;
  /// The region that the trigger will be in. The trigger will only receive events originating in this region. It can be the same region as the function, a different region or multi-region, or the global region. If not provided, defaults to the same region as the function.
  final pulumi.Input<String>? triggerRegion;

  /// Creates a new [EventTriggerCloudfunctionsV2alpha].
  /// [channel] Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  /// [eventFilters] Criteria used to filter events.
  /// [eventType] The type of event to observe. For example: `google.cloud.audit.log.v1.written` or `google.cloud.pubsub.topic.v1.messagePublished`.
  /// [pubsubTopic] Optional. The name of a Pub/Sub topic in the same project that will be used as the transport topic for the event delivery. Format: `projects/{project}/topics/{topic}`. This is only valid for events of type `google.cloud.pubsub.topic.v1.messagePublished`. The topic provided here will not be deleted at function deletion.
  /// [retryPolicy] Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
  /// [serviceAccountEmail] Optional. The email of the trigger's service account. The service account must have permission to invoke Cloud Run services, the permission is `run.routes.invoke`. If empty, defaults to the Compute Engine default service account: `{project_number}-compute@developer.gserviceaccount.com`.
  /// [triggerRegion] The region that the trigger will be in. The trigger will only receive events originating in this region. It can be the same region as the function, a different region or multi-region, or the global region. If not provided, defaults to the same region as the function.
  const EventTriggerCloudfunctionsV2alpha({
    this.channel,
    this.eventFilters,
    required this.eventType,
    this.pubsubTopic,
    this.retryPolicy,
    this.serviceAccountEmail,
    this.triggerRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'eventFilters': ?pulumi.Input.mapOptionalInputValue<List<EventFilterCloudfunctionsV2alpha>, List<Map<String, dynamic>>>(eventFilters, (value) => pulumi.Input.encodeList<EventFilterCloudfunctionsV2alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventType': eventType,
      'pubsubTopic': ?pubsubTopic,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<EventTriggerRetryPolicyCloudfunctionsV2alpha, String>(retryPolicy, (value) => value.wireValue),
      'serviceAccountEmail': ?serviceAccountEmail,
      'triggerRegion': ?triggerRegion,
    };
  }

  factory EventTriggerCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return EventTriggerCloudfunctionsV2alpha(
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventFilters: (() { final guardedValue = map['eventFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventFilterCloudfunctionsV2alpha>(guardedValue, (value) => EventFilterCloudfunctionsV2alpha.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventTriggerRetryPolicyCloudfunctionsV2alpha.fromValue(guardedValue as String)); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerRegion: (() { final guardedValue = map['triggerRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

