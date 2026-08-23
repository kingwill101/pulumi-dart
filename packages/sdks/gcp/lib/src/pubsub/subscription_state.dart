// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_bigquery_config.dart';
import 'subscription_cloud_storage_config.dart';
import 'subscription_dead_letter_policy.dart';
import 'subscription_expiration_policy.dart';
import 'subscription_message_transform.dart';
import 'subscription_push_config.dart';
import 'subscription_retry_policy.dart';

/// Input properties used for looking up and filtering Subscription resources.
class SubscriptionState {
  /// This value is the maximum time after a subscriber receives a message
  /// before the subscriber should acknowledge the message. After message
  /// delivery but before the ack deadline expires and before the message is
  /// acknowledged, it is an outstanding message and will not be delivered
  /// again during that time (on a best-effort basis).
  /// For pull subscriptions, this value is used as the initial value for
  /// the ack deadline. To override this value for a given message, call
  /// subscriptions.modifyAckDeadline with the corresponding ackId if using
  /// pull. The minimum custom deadline you can specify is 10 seconds. The
  /// maximum custom deadline you can specify is 600 seconds (10 minutes).
  /// If this parameter is 0, a default value of 10 seconds is used.
  /// For push delivery, this value is also used to set the request timeout
  /// for the call to the push endpoint.
  /// If the subscriber never acknowledges the message, the Pub/Sub system
  /// will eventually redeliver the message.
  final pulumi.Input<int>? ackDeadlineSeconds;
  /// If delivery to BigQuery is used with this subscription, this field is used to configure it.
  /// Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
  /// If all three are empty, then the subscriber will pull and ack messages using API methods.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionBigqueryConfig>? bigqueryConfig;
  /// If delivery to Cloud Storage is used with this subscription, this field is used to configure it.
  /// Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
  /// If all three are empty, then the subscriber will pull and ack messages using API methods.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionCloudStorageConfig>? cloudStorageConfig;
  /// A policy that specifies the conditions for dead lettering messages in
  /// this subscription. If deadLetterPolicy is not set, dead lettering
  /// is disabled.
  /// The Cloud Pub/Sub service account associated with this subscription's
  /// parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Acknowledge() messages on this subscription.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionDeadLetterPolicy>? deadLetterPolicy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// If `true`, Pub/Sub provides the following guarantees for the delivery
  /// of a message with a given value of messageId on this Subscriptions':
  /// - The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires.
  /// - An acknowledged message will not be resent to a subscriber.
  /// Note that subscribers may still receive multiple copies of a message when `enableExactlyOnceDelivery`
  /// is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values
  final pulumi.Input<bool>? enableExactlyOnceDelivery;
  /// If `true`, messages published with the same orderingKey in PubsubMessage will be delivered to
  /// the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they
  /// may be delivered in any order.
  final pulumi.Input<bool>? enableMessageOrdering;
  /// A policy that specifies the conditions for this subscription's expiration.
  /// A subscription is considered active as long as any connected subscriber
  /// is successfully consuming messages from the subscription or is issuing
  /// operations on the subscription. If expirationPolicy is not set, a default
  /// policy with ttl of 31 days will be used.  If it is set but ttl is "", the
  /// resource never expires.  The minimum allowed value for expirationPolicy.ttl
  /// is 1 day.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionExpirationPolicy>? expirationPolicy;
  /// The subscription only delivers the messages that match the filter.
  /// Pub/Sub automatically acknowledges the messages that don't match the filter. You can filter messages
  /// by their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,
  /// you can't modify the filter.
  final pulumi.Input<String>? filter;
  /// A set of key/value label pairs to assign to this Subscription.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// How long to retain unacknowledged messages in the subscription's
  /// backlog, from the moment a message is published. If
  /// retainAckedMessages is true, then this also configures the retention
  /// of acknowledged messages, and thus configures how far back in time a
  /// subscriptions.seek can be done. Defaults to 7 days. Cannot be more
  /// than 31 days (`"2678400s"`) or less than 10 minutes (`"600s"`).
  /// A duration in seconds with up to nine fractional digits, terminated
  /// by 's'. Example: `"600.5s"`.
  final pulumi.Input<String>? messageRetentionDuration;
  /// Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// order specified.
  /// Structure is documented below.
  final pulumi.Input<List<SubscriptionMessageTransform>>? messageTransforms;
  /// Name of the subscription.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// If push delivery is used with this subscription, this field is used to
  /// configure it. An empty pushConfig signifies that the subscriber will
  /// pull and ack messages using API methods.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionPushConfig>? pushConfig;
  /// Indicates whether to retain acknowledged messages. If `true`, then
  /// messages are not expunged from the subscription's backlog, even if
  /// they are acknowledged, until they fall out of the
  /// messageRetentionDuration window.
  final pulumi.Input<bool>? retainAckedMessages;
  /// A policy that specifies how Pub/Sub retries message delivery for this subscription.
  /// If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.
  /// RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message
  /// Structure is documented below.
  final pulumi.Input<SubscriptionRetryPolicy>? retryPolicy;
  /// Input only. Resource manager tags to be bound to the subscription. Tag
  /// keys and values have the same definition as resource manager tags. Keys
  /// must be in the format tagKeys/{tag_key_id}, and values are in the format
  /// tagValues/456. The field is ignored when empty. The field is immutable and
  /// causes resource replacement when mutated. This field is only set at create
  /// time and modifying this field after creation will trigger recreation. To
  /// apply tags to an existing resource, see the `gcp.tags.TagValue`
  /// resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A reference to a Topic resource, of the form projects/{project}/topics/{{name}}
  /// (as in the id property of a google_pubsub_topic), or just a topic name if
  /// the topic is in the same project as the subscription.
  final pulumi.Input<String>? topic;

  /// Creates a new [SubscriptionState].
  /// [ackDeadlineSeconds] This value is the maximum time after a subscriber receives a message
  /// [bigqueryConfig] If delivery to BigQuery is used with this subscription, this field is used to configure it.
  /// [cloudStorageConfig] If delivery to Cloud Storage is used with this subscription, this field is used to configure it.
  /// [deadLetterPolicy] A policy that specifies the conditions for dead lettering messages in
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableExactlyOnceDelivery] If `true`, Pub/Sub provides the following guarantees for the delivery
  /// [enableMessageOrdering] If `true`, messages published with the same orderingKey in PubsubMessage will be delivered to
  /// [expirationPolicy] A policy that specifies the conditions for this subscription's expiration.
  /// [filter] The subscription only delivers the messages that match the filter.
  /// [labels] A set of key/value label pairs to assign to this Subscription.
  /// [messageRetentionDuration] How long to retain unacknowledged messages in the subscription's
  /// [messageTransforms] Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// [name] Name of the subscription.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [pushConfig] If push delivery is used with this subscription, this field is used to
  /// [retainAckedMessages] Indicates whether to retain acknowledged messages. If `true`, then
  /// [retryPolicy] A policy that specifies how Pub/Sub retries message delivery for this subscription.
  /// [tags] Input only. Resource manager tags to be bound to the subscription. Tag
  /// [topic] A reference to a Topic resource, of the form projects/{project}/topics/{{name}}
  const SubscriptionState({
    this.ackDeadlineSeconds,
    this.bigqueryConfig,
    this.cloudStorageConfig,
    this.deadLetterPolicy,
    this.deletionPolicy,
    this.effectiveLabels,
    this.enableExactlyOnceDelivery,
    this.enableMessageOrdering,
    this.expirationPolicy,
    this.filter,
    this.labels,
    this.messageRetentionDuration,
    this.messageTransforms,
    this.name,
    this.project,
    this.pulumiLabels,
    this.pushConfig,
    this.retainAckedMessages,
    this.retryPolicy,
    this.tags,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ?ackDeadlineSeconds,
      'bigqueryConfig': ?pulumi.Input.mapOptionalInputValue<SubscriptionBigqueryConfig, Map<String, dynamic>>(bigqueryConfig, (value) => value.toMap()),
      'cloudStorageConfig': ?pulumi.Input.mapOptionalInputValue<SubscriptionCloudStorageConfig, Map<String, dynamic>>(cloudStorageConfig, (value) => value.toMap()),
      'deadLetterPolicy': ?pulumi.Input.mapOptionalInputValue<SubscriptionDeadLetterPolicy, Map<String, dynamic>>(deadLetterPolicy, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'enableExactlyOnceDelivery': ?enableExactlyOnceDelivery,
      'enableMessageOrdering': ?enableMessageOrdering,
      'expirationPolicy': ?pulumi.Input.mapOptionalInputValue<SubscriptionExpirationPolicy, Map<String, dynamic>>(expirationPolicy, (value) => value.toMap()),
      'filter': ?filter,
      'labels': ?labels,
      'messageRetentionDuration': ?messageRetentionDuration,
      'messageTransforms': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionMessageTransform>, List<Map<String, dynamic>>>(messageTransforms, (value) => pulumi.Input.encodeList<SubscriptionMessageTransform, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'pushConfig': ?pulumi.Input.mapOptionalInputValue<SubscriptionPushConfig, Map<String, dynamic>>(pushConfig, (value) => value.toMap()),
      'retainAckedMessages': ?retainAckedMessages,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<SubscriptionRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'tags': ?tags,
      'topic': ?topic,
    };
  }

  factory SubscriptionState.fromMap(Map<String, dynamic> map) {
    return SubscriptionState(
      ackDeadlineSeconds: (() { final guardedValue = map['ackDeadlineSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bigqueryConfig: (() { final guardedValue = map['bigqueryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionBigqueryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudStorageConfig: (() { final guardedValue = map['cloudStorageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionCloudStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deadLetterPolicy: (() { final guardedValue = map['deadLetterPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionDeadLetterPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enableExactlyOnceDelivery: (() { final guardedValue = map['enableExactlyOnceDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableMessageOrdering: (() { final guardedValue = map['enableMessageOrdering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expirationPolicy: (() { final guardedValue = map['expirationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionExpirationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      messageRetentionDuration: (() { final guardedValue = map['messageRetentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageTransforms: (() { final guardedValue = map['messageTransforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionMessageTransform>(guardedValue, (value) => SubscriptionMessageTransform.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pushConfig: (() { final guardedValue = map['pushConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionPushConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retainAckedMessages: (() { final guardedValue = map['retainAckedMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
