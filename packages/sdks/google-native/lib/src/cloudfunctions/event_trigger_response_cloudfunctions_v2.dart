// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_filter_response.dart';

/// Describes EventTrigger, used to request events to be sent from another service.
class EventTriggerResponseCloudfunctionsV2 {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final pulumi.Input<String> channel;
  /// Criteria used to filter events.
  final pulumi.Input<List<EventFilterResponse>> eventFilters;
  /// The type of event to observe. For example: `google.cloud.audit.log.v1.written` or `google.cloud.pubsub.topic.v1.messagePublished`.
  final pulumi.Input<String> eventType;
  /// Optional. The name of a Pub/Sub topic in the same project that will be used as the transport topic for the event delivery. Format: `projects/{project}/topics/{topic}`. This is only valid for events of type `google.cloud.pubsub.topic.v1.messagePublished`. The topic provided here will not be deleted at function deletion.
  final pulumi.Input<String> pubsubTopic;
  /// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
  final pulumi.Input<String> retryPolicy;
  /// Optional. The email of the trigger's service account. The service account must have permission to invoke Cloud Run services, the permission is `run.routes.invoke`. If empty, defaults to the Compute Engine default service account: `{project_number}-compute@developer.gserviceaccount.com`.
  final pulumi.Input<String> serviceAccountEmail;
  /// The resource name of the Eventarc trigger. The format of this field is `projects/{project}/locations/{region}/triggers/{trigger}`.
  final pulumi.Input<String> trigger;
  /// The region that the trigger will be in. The trigger will only receive events originating in this region. It can be the same region as the function, a different region or multi-region, or the global region. If not provided, defaults to the same region as the function.
  final pulumi.Input<String> triggerRegion;

  /// Creates a new [EventTriggerResponseCloudfunctionsV2].
  /// [channel] Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  /// [eventFilters] Criteria used to filter events.
  /// [eventType] The type of event to observe. For example: `google.cloud.audit.log.v1.written` or `google.cloud.pubsub.topic.v1.messagePublished`.
  /// [pubsubTopic] Optional. The name of a Pub/Sub topic in the same project that will be used as the transport topic for the event delivery. Format: `projects/{project}/topics/{topic}`. This is only valid for events of type `google.cloud.pubsub.topic.v1.messagePublished`. The topic provided here will not be deleted at function deletion.
  /// [retryPolicy] Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
  /// [serviceAccountEmail] Optional. The email of the trigger's service account. The service account must have permission to invoke Cloud Run services, the permission is `run.routes.invoke`. If empty, defaults to the Compute Engine default service account: `{project_number}-compute@developer.gserviceaccount.com`.
  /// [trigger] The resource name of the Eventarc trigger. The format of this field is `projects/{project}/locations/{region}/triggers/{trigger}`.
  /// [triggerRegion] The region that the trigger will be in. The trigger will only receive events originating in this region. It can be the same region as the function, a different region or multi-region, or the global region. If not provided, defaults to the same region as the function.
  EventTriggerResponseCloudfunctionsV2({
    required this.channel,
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
      'channel': channel,
      'eventFilters': pulumi.Input.mapInputValue<List<EventFilterResponse>, List<Map<String, dynamic>>>(eventFilters, (value) => pulumi.Input.encodeList<EventFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventType': eventType,
      'pubsubTopic': pubsubTopic,
      'retryPolicy': retryPolicy,
      'serviceAccountEmail': serviceAccountEmail,
      'trigger': trigger,
      'triggerRegion': triggerRegion,
    };
  }

  factory EventTriggerResponseCloudfunctionsV2.fromMap(Map<String, dynamic> map) {
    return EventTriggerResponseCloudfunctionsV2(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      eventFilters: pulumi.Input.fromValue(pulumi.Input.decodeList<EventFilterResponse>(map['eventFilters']!, (value) => EventFilterResponse.fromMap((value as Map).cast<String, dynamic>()))),
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
      retryPolicy: pulumi.Input.fromValue(map['retryPolicy'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      trigger: pulumi.Input.fromValue(map['trigger'] as String),
      triggerRegion: pulumi.Input.fromValue(map['triggerRegion'] as String),
    );
  }
}

