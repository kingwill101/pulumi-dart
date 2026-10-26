// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_config_response.dart';
import 'cloud_storage_config_response.dart';
import 'dead_letter_policy_response.dart';
import 'expiration_policy_response.dart';
import 'push_config_response.dart';
import 'retry_policy_response.dart';

/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be _outstanding_. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.
  final int? ackDeadlineSeconds;
  /// Optional. If delivery to BigQuery is used with this subscription, this field is used to configure it.
  final BigQueryConfigResponse? bigqueryConfig;
  /// Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it.
  final CloudStorageConfigResponse? cloudStorageConfig;
  /// Optional. A policy that specifies the conditions for dead lettering messages in this subscription. If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub service account associated with this subscriptions's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription.
  final DeadLetterPolicyResponse? deadLetterPolicy;
  /// Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions don't receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made.
  final bool? detached;
  /// Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a given value of `message_id` on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery` is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct `message_id` values.
  final bool? enableExactlyOnceDelivery;
  /// Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be delivered to the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they may be delivered in any order.
  final bool? enableMessageOrdering;
  /// Optional. A policy that specifies the conditions for this subscription's expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If `expiration_policy` is not set, a *default policy* with `ttl` of 31 days will be used. The minimum allowed value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set, but `expiration_policy.ttl` is not set, the subscription never expires.
  final ExpirationPolicyResponse? expirationPolicy;
  /// Optional. An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `attributes` field matches the filter are delivered on this subscription. If empty, then no messages are filtered out.
  final String? filter;
  /// Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  final Map<String, String>? labels;
  /// Optional. How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If `retain_acked_messages` is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a `Seek` can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10 minutes.
  final String? messageRetentionDuration;
  /// The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final String? name;
  /// Optional. If push delivery is used with this subscription, this field is used to configure it.
  final PushConfigResponse? pushConfig;
  /// Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to [`Seek` to a timestamp] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages.
  final bool? retainAckedMessages;
  /// Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message.
  final RetryPolicyResponse? retryPolicy;
  /// An output-only field indicating whether or not the subscription can receive messages.
  final String? state;
  /// The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  final String? topic;
  /// Indicates the minimum duration for which a message is retained after it is published to the subscription's topic. If this field is set, messages published to the subscription's topic in the last `topic_message_retention_duration` are always available to subscribers. See the `message_retention_duration` field in `Topic`. This field is set only in responses from the server; it is ignored if it is set in any requests.
  final String? topicMessageRetentionDuration;

  /// Creates a new [GetSubscriptionResult].
  /// [ackDeadlineSeconds] Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be _outstanding_. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.
  /// [bigqueryConfig] Optional. If delivery to BigQuery is used with this subscription, this field is used to configure it.
  /// [cloudStorageConfig] Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it.
  /// [deadLetterPolicy] Optional. A policy that specifies the conditions for dead lettering messages in this subscription. If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub service account associated with this subscriptions's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription.
  /// [detached] Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions don't receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made.
  /// [enableExactlyOnceDelivery] Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a given value of `message_id` on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery` is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct `message_id` values.
  /// [enableMessageOrdering] Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be delivered to the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they may be delivered in any order.
  /// [expirationPolicy] Optional. A policy that specifies the conditions for this subscription's expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If `expiration_policy` is not set, a *default policy* with `ttl` of 31 days will be used. The minimum allowed value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set, but `expiration_policy.ttl` is not set, the subscription never expires.
  /// [filter] Optional. An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `attributes` field matches the filter are delivered on this subscription. If empty, then no messages are filtered out.
  /// [labels] Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  /// [messageRetentionDuration] Optional. How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If `retain_acked_messages` is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a `Seek` can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10 minutes.
  /// [name] The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  /// [pushConfig] Optional. If push delivery is used with this subscription, this field is used to configure it.
  /// [retainAckedMessages] Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to [`Seek` to a timestamp] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages.
  /// [retryPolicy] Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message.
  /// [state] An output-only field indicating whether or not the subscription can receive messages.
  /// [topic] The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  /// [topicMessageRetentionDuration] Indicates the minimum duration for which a message is retained after it is published to the subscription's topic. If this field is set, messages published to the subscription's topic in the last `topic_message_retention_duration` are always available to subscribers. See the `message_retention_duration` field in `Topic`. This field is set only in responses from the server; it is ignored if it is set in any requests.
  const GetSubscriptionResult({
    this.ackDeadlineSeconds,
    this.bigqueryConfig,
    this.cloudStorageConfig,
    this.deadLetterPolicy,
    this.detached,
    this.enableExactlyOnceDelivery,
    this.enableMessageOrdering,
    this.expirationPolicy,
    this.filter,
    this.labels,
    this.messageRetentionDuration,
    this.name,
    this.pushConfig,
    this.retainAckedMessages,
    this.retryPolicy,
    this.state,
    this.topic,
    this.topicMessageRetentionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ?ackDeadlineSeconds,
      'bigqueryConfig': ?bigqueryConfig?.toMap(),
      'cloudStorageConfig': ?cloudStorageConfig?.toMap(),
      'deadLetterPolicy': ?deadLetterPolicy?.toMap(),
      'detached': ?detached,
      'enableExactlyOnceDelivery': ?enableExactlyOnceDelivery,
      'enableMessageOrdering': ?enableMessageOrdering,
      'expirationPolicy': ?expirationPolicy?.toMap(),
      'filter': ?filter,
      'labels': ?labels,
      'messageRetentionDuration': ?messageRetentionDuration,
      'name': ?name,
      'pushConfig': ?pushConfig?.toMap(),
      'retainAckedMessages': ?retainAckedMessages,
      'retryPolicy': ?retryPolicy?.toMap(),
      'state': ?state,
      'topic': ?topic,
      'topicMessageRetentionDuration': ?topicMessageRetentionDuration,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      ackDeadlineSeconds: (() { final guardedValue = map['ackDeadlineSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      bigqueryConfig: (() { final guardedValue = map['bigqueryConfig']; if (guardedValue == null) return null; return BigQueryConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudStorageConfig: (() { final guardedValue = map['cloudStorageConfig']; if (guardedValue == null) return null; return CloudStorageConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deadLetterPolicy: (() { final guardedValue = map['deadLetterPolicy']; if (guardedValue == null) return null; return DeadLetterPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      detached: (() { final guardedValue = map['detached']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableExactlyOnceDelivery: (() { final guardedValue = map['enableExactlyOnceDelivery']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableMessageOrdering: (() { final guardedValue = map['enableMessageOrdering']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expirationPolicy: (() { final guardedValue = map['expirationPolicy']; if (guardedValue == null) return null; return ExpirationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      messageRetentionDuration: (() { final guardedValue = map['messageRetentionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pushConfig: (() { final guardedValue = map['pushConfig']; if (guardedValue == null) return null; return PushConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      retainAckedMessages: (() { final guardedValue = map['retainAckedMessages']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return RetryPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topicMessageRetentionDuration: (() { final guardedValue = map['topicMessageRetentionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
