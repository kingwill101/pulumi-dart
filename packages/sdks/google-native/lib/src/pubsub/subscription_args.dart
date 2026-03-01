// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_config.dart';
import 'cloud_storage_config.dart';
import 'dead_letter_policy.dart';
import 'expiration_policy.dart';
import 'push_config.dart';
import 'retry_policy.dart';

/// {@template pulumi_pubsub_v1_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_subscription_args_doc}
class SubscriptionArgs {
  /// Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be _outstanding_. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.
  final pulumi.Input<int>? ackDeadlineSeconds;
  /// Optional. If delivery to BigQuery is used with this subscription, this field is used to configure it.
  final pulumi.Input<BigQueryConfig>? bigqueryConfig;
  /// Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it.
  final pulumi.Input<CloudStorageConfig>? cloudStorageConfig;
  /// Optional. A policy that specifies the conditions for dead lettering messages in this subscription. If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub service account associated with this subscriptions's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription.
  final pulumi.Input<DeadLetterPolicy>? deadLetterPolicy;
  /// Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions don't receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made.
  final pulumi.Input<bool>? detached;
  /// Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a given value of `message_id` on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery` is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct `message_id` values.
  final pulumi.Input<bool>? enableExactlyOnceDelivery;
  /// Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be delivered to the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they may be delivered in any order.
  final pulumi.Input<bool>? enableMessageOrdering;
  /// Optional. A policy that specifies the conditions for this subscription's expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If `expiration_policy` is not set, a *default policy* with `ttl` of 31 days will be used. The minimum allowed value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set, but `expiration_policy.ttl` is not set, the subscription never expires.
  final pulumi.Input<ExpirationPolicy>? expirationPolicy;
  /// Optional. An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `attributes` field matches the filter are delivered on this subscription. If empty, then no messages are filtered out.
  final pulumi.Input<String>? filter;
  /// Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If `retain_acked_messages` is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a `Seek` can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10 minutes.
  final pulumi.Input<String>? messageRetentionDuration;
  /// The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. If push delivery is used with this subscription, this field is used to configure it.
  final pulumi.Input<PushConfig>? pushConfig;
  /// Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to [`Seek` to a timestamp] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages.
  final pulumi.Input<bool>? retainAckedMessages;
  /// Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message.
  final pulumi.Input<RetryPolicy>? retryPolicy;
  final pulumi.Input<String> subscriptionId;
  /// The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  final pulumi.Input<String> topic;

  /// Creates a new [SubscriptionArgs].
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
  /// [project] Optional.
  /// [pushConfig] Optional. If push delivery is used with this subscription, this field is used to configure it.
  /// [retainAckedMessages] Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to [`Seek` to a timestamp] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages.
  /// [retryPolicy] Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message.
  /// [subscriptionId] Required.
  /// [topic] The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  SubscriptionArgs({
    pulumi.Output<int>? ackDeadlineSeconds,
    pulumi.Output<BigQueryConfig>? bigqueryConfig,
    pulumi.Output<CloudStorageConfig>? cloudStorageConfig,
    pulumi.Output<DeadLetterPolicy>? deadLetterPolicy,
    pulumi.Output<bool>? detached,
    pulumi.Output<bool>? enableExactlyOnceDelivery,
    pulumi.Output<bool>? enableMessageOrdering,
    pulumi.Output<ExpirationPolicy>? expirationPolicy,
    pulumi.Output<String>? filter,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? messageRetentionDuration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<PushConfig>? pushConfig,
    pulumi.Output<bool>? retainAckedMessages,
    pulumi.Output<RetryPolicy>? retryPolicy,
    required pulumi.Output<String> subscriptionId,
    required pulumi.Output<String> topic,
  }) :
      ackDeadlineSeconds = pulumi.Input.asOptionalInput<int>(ackDeadlineSeconds),
      bigqueryConfig = pulumi.Input.asOptionalInput<BigQueryConfig>(bigqueryConfig),
      cloudStorageConfig = pulumi.Input.asOptionalInput<CloudStorageConfig>(cloudStorageConfig),
      deadLetterPolicy = pulumi.Input.asOptionalInput<DeadLetterPolicy>(deadLetterPolicy),
      detached = pulumi.Input.asOptionalInput<bool>(detached),
      enableExactlyOnceDelivery = pulumi.Input.asOptionalInput<bool>(enableExactlyOnceDelivery),
      enableMessageOrdering = pulumi.Input.asOptionalInput<bool>(enableMessageOrdering),
      expirationPolicy = pulumi.Input.asOptionalInput<ExpirationPolicy>(expirationPolicy),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      messageRetentionDuration = pulumi.Input.asOptionalInput<String>(messageRetentionDuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pushConfig = pulumi.Input.asOptionalInput<PushConfig>(pushConfig),
      retainAckedMessages = pulumi.Input.asOptionalInput<bool>(retainAckedMessages),
      retryPolicy = pulumi.Input.asOptionalInput<RetryPolicy>(retryPolicy),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId),
      topic = pulumi.Input.asInput<String>(topic);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ?ackDeadlineSeconds,
      'bigqueryConfig': ?pulumi.Input.mapOptionalInputValue<BigQueryConfig, Map<String, dynamic>>(bigqueryConfig, (value) => value.toMap()),
      'cloudStorageConfig': ?pulumi.Input.mapOptionalInputValue<CloudStorageConfig, Map<String, dynamic>>(cloudStorageConfig, (value) => value.toMap()),
      'deadLetterPolicy': ?pulumi.Input.mapOptionalInputValue<DeadLetterPolicy, Map<String, dynamic>>(deadLetterPolicy, (value) => value.toMap()),
      'detached': ?detached,
      'enableExactlyOnceDelivery': ?enableExactlyOnceDelivery,
      'enableMessageOrdering': ?enableMessageOrdering,
      'expirationPolicy': ?pulumi.Input.mapOptionalInputValue<ExpirationPolicy, Map<String, dynamic>>(expirationPolicy, (value) => value.toMap()),
      'filter': ?filter,
      'labels': ?labels,
      'messageRetentionDuration': ?messageRetentionDuration,
      'name': ?name,
      'project': ?project,
      'pushConfig': ?pulumi.Input.mapOptionalInputValue<PushConfig, Map<String, dynamic>>(pushConfig, (value) => value.toMap()),
      'retainAckedMessages': ?retainAckedMessages,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'subscriptionId': subscriptionId,
      'topic': topic,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      ackDeadlineSeconds: map['ackDeadlineSeconds'] == null ? null : pulumi.Output.create<int>(map['ackDeadlineSeconds'] as int),
      bigqueryConfig: map['bigqueryConfig'] == null ? null : pulumi.Output.create<BigQueryConfig>(BigQueryConfig.fromMap((map['bigqueryConfig'] as Map).cast<String, dynamic>())),
      cloudStorageConfig: map['cloudStorageConfig'] == null ? null : pulumi.Output.create<CloudStorageConfig>(CloudStorageConfig.fromMap((map['cloudStorageConfig'] as Map).cast<String, dynamic>())),
      deadLetterPolicy: map['deadLetterPolicy'] == null ? null : pulumi.Output.create<DeadLetterPolicy>(DeadLetterPolicy.fromMap((map['deadLetterPolicy'] as Map).cast<String, dynamic>())),
      detached: map['detached'] == null ? null : pulumi.Output.create<bool>(map['detached'] as bool),
      enableExactlyOnceDelivery: map['enableExactlyOnceDelivery'] == null ? null : pulumi.Output.create<bool>(map['enableExactlyOnceDelivery'] as bool),
      enableMessageOrdering: map['enableMessageOrdering'] == null ? null : pulumi.Output.create<bool>(map['enableMessageOrdering'] as bool),
      expirationPolicy: map['expirationPolicy'] == null ? null : pulumi.Output.create<ExpirationPolicy>(ExpirationPolicy.fromMap((map['expirationPolicy'] as Map).cast<String, dynamic>())),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      messageRetentionDuration: map['messageRetentionDuration'] == null ? null : pulumi.Output.create<String>(map['messageRetentionDuration'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pushConfig: map['pushConfig'] == null ? null : pulumi.Output.create<PushConfig>(PushConfig.fromMap((map['pushConfig'] as Map).cast<String, dynamic>())),
      retainAckedMessages: map['retainAckedMessages'] == null ? null : pulumi.Output.create<bool>(map['retainAckedMessages'] as bool),
      retryPolicy: map['retryPolicy'] == null ? null : pulumi.Output.create<RetryPolicy>(RetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
      topic: pulumi.Output.create<String>(map['topic'] as String),
    );
  }
}

