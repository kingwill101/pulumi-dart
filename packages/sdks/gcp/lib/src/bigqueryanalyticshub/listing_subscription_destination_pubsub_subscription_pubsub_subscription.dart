// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_subscription_destination_pubsub_subscription_pubsub_subscription_bigquery_config.dart';
import 'listing_subscription_destination_pubsub_subscription_pubsub_subscription_cloud_storage_config.dart';
import 'listing_subscription_destination_pubsub_subscription_pubsub_subscription_dead_letter_policy.dart';
import 'listing_subscription_destination_pubsub_subscription_pubsub_subscription_expiration_policy.dart';
import 'listing_subscription_destination_pubsub_subscription_pubsub_subscription_push_config.dart';
import 'listing_subscription_destination_pubsub_subscription_pubsub_subscription_retry_policy.dart';

class ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription {
  /// The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to
  /// acknowledge receipt before resending the message. In the interval after the message is delivered
  /// and before it is acknowledged, it is considered to be outstanding. During that time period, the
  /// message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is
  /// used as the initial value for the ack deadline. To override this value for a given message, call
  /// `ModifyAckDeadline` with the corresponding `ackId` if using non-streaming pull or send the
  /// `ackId` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom
  /// deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600
  /// seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push
  /// delivery, this value is also used to set the request timeout for the call to the push endpoint.
  /// If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver
  /// the message.
  final pulumi.Input<int?>? ackDeadlineSeconds;
  /// If delivery to BigQuery is used with this subscription, this field is used to configure it.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig?>? bigqueryConfig;
  /// If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig?>? cloudStorageConfig;
  /// A policy that specifies the conditions for dead lettering messages in this subscription. If
  /// `deadLetterPolicy` is not set, dead lettering is disabled. The Pub/Sub service account associated
  /// with this subscriptions's parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to
  /// Acknowledge() messages on this subscription.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionDeadLetterPolicy?>? deadLetterPolicy;
  /// Indicates whether the subscription is detached from its topic. Detached subscriptions don't
  /// receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull`
  /// requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes
  /// to the endpoint will not be made.
  final pulumi.Input<bool?>? detached;
  /// If true, Pub/Sub provides the following guarantees for the delivery of a message with a given
  /// value of `messageId` on this subscription: The message sent to a subscriber is guaranteed not
  /// to be resent before the message's acknowledgement deadline expires. An acknowledged message will
  /// not be resent to a subscriber. Note that subscribers may still receive multiple copies of a
  /// message when `enableExactlyOnceDelivery` is true if the message was published multiple times by
  /// a publisher client. These copies are considered distinct by Pub/Sub and have distinct `messageId`
  /// values.
  final pulumi.Input<bool?>? enableExactlyOnceDelivery;
  /// If true, messages published with the same `orderingKey` in `PubsubMessage`
  /// will be delivered to the subscribers in the order in which they are received
  /// by the Pub/Sub system. Otherwise, they may be delivered in any order.
  final pulumi.Input<bool?>? enableMessageOrdering;
  /// A policy that specifies the conditions for this subscription's expiration. A subscription is
  /// considered active as long as any connected subscriber is successfully consuming messages from
  /// the subscription or is issuing operations on the subscription. If `expirationPolicy` is not
  /// set, a default policy with `ttl` of 31 days will be used. The minimum allowed value for
  /// `expirationPolicy.ttl` is 1 day. If `expirationPolicy` is set, but `expirationPolicy.ttl`
  /// is not set, the subscription never expires.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy?>? expirationPolicy;
  /// An expression written in the Pub/Sub filter language. If non-empty, then only `PubsubMessage`s
  /// whose `attributes` field matches the filter are delivered on this subscription. If empty, then
  /// no messages are filtered out.
  final pulumi.Input<String?>? filter;
  /// See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  final pulumi.Input<Map<String, String>?>? labels;
  /// How long to retain unacknowledged messages in the subscription's backlog, from the moment a
  /// message is published. If `retainAckedMessages` is true, then this also configures the retention
  /// of acknowledged messages, and thus configures how far back in time a Seek can be done. Defaults
  /// to 7 days. Cannot be more than 31 days or less than 10 minutes.
  final pulumi.Input<String?>? messageRetentionDuration;
  /// Name of the subscription. Format is `projects/{project}/subscriptions/{sub}`.
  final pulumi.Input<String> name;
  /// If push delivery is used with this subscription, this field is used to configure it.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfig?>? pushConfig;
  /// Indicates whether to retain acknowledged messages. If true, then messages are not expunged from
  /// the subscription's backlog, even if they are acknowledged, until they fall out of the
  /// `messageRetentionDuration` window. This must be true if you would like to Seek to a timestamp
  /// in the past to replay previously-acknowledged messages.
  final pulumi.Input<bool?>? retainAckedMessages;
  /// A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set,
  /// the default retry policy is applied. This generally implies that messages will be retried as soon
  /// as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement
  /// deadline exceeded events for a given message.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy?>? retryPolicy;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription].
  /// [ackDeadlineSeconds] The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to
  /// [bigqueryConfig] If delivery to BigQuery is used with this subscription, this field is used to configure it.
  /// [cloudStorageConfig] If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it.
  /// [deadLetterPolicy] A policy that specifies the conditions for dead lettering messages in this subscription. If
  /// [detached] Indicates whether the subscription is detached from its topic. Detached subscriptions don't
  /// [enableExactlyOnceDelivery] If true, Pub/Sub provides the following guarantees for the delivery of a message with a given
  /// [enableMessageOrdering] If true, messages published with the same `orderingKey` in `PubsubMessage`
  /// [expirationPolicy] A policy that specifies the conditions for this subscription's expiration. A subscription is
  /// [filter] An expression written in the Pub/Sub filter language. If non-empty, then only `PubsubMessage`s
  /// [labels] See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  /// [messageRetentionDuration] How long to retain unacknowledged messages in the subscription's backlog, from the moment a
  /// [name] Name of the subscription. Format is `projects/{project}/subscriptions/{sub}`.
  /// [pushConfig] If push delivery is used with this subscription, this field is used to configure it.
  /// [retainAckedMessages] Indicates whether to retain acknowledged messages. If true, then messages are not expunged from
  /// [retryPolicy] A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set,
  const ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription({
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
    required this.name,
    this.pushConfig,
    this.retainAckedMessages,
    this.retryPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ?ackDeadlineSeconds,
      'bigqueryConfig': ?pulumi.Input.mapOptionalInputValue<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig, Map<String, dynamic>>(bigqueryConfig, (value) => value.toMap()),
      'cloudStorageConfig': ?pulumi.Input.mapOptionalInputValue<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig, Map<String, dynamic>>(cloudStorageConfig, (value) => value.toMap()),
      'deadLetterPolicy': ?pulumi.Input.mapOptionalInputValue<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionDeadLetterPolicy, Map<String, dynamic>>(deadLetterPolicy, (value) => value.toMap()),
      'detached': ?detached,
      'enableExactlyOnceDelivery': ?enableExactlyOnceDelivery,
      'enableMessageOrdering': ?enableMessageOrdering,
      'expirationPolicy': ?pulumi.Input.mapOptionalInputValue<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy, Map<String, dynamic>>(expirationPolicy, (value) => value.toMap()),
      'filter': ?filter,
      'labels': ?labels,
      'messageRetentionDuration': ?messageRetentionDuration,
      'name': name,
      'pushConfig': ?pulumi.Input.mapOptionalInputValue<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfig, Map<String, dynamic>>(pushConfig, (value) => value.toMap()),
      'retainAckedMessages': ?retainAckedMessages,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription(
      ackDeadlineSeconds: (() { final guardedValue = map['ackDeadlineSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bigqueryConfig: (() { final guardedValue = map['bigqueryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudStorageConfig: (() { final guardedValue = map['cloudStorageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deadLetterPolicy: (() { final guardedValue = map['deadLetterPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionDeadLetterPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      detached: (() { final guardedValue = map['detached']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableExactlyOnceDelivery: (() { final guardedValue = map['enableExactlyOnceDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableMessageOrdering: (() { final guardedValue = map['enableMessageOrdering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expirationPolicy: (() { final guardedValue = map['expirationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      messageRetentionDuration: (() { final guardedValue = map['messageRetentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      pushConfig: (() { final guardedValue = map['pushConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retainAckedMessages: (() { final guardedValue = map['retainAckedMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
