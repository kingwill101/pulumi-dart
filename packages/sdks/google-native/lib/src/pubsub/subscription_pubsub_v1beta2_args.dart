// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'push_config_pubsub_v1beta2.dart';

/// {@template pulumi_pubsub_v1beta2_subscription_pubsub_v1beta2_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_subscription_pubsub_v1beta2_args_doc}
class SubscriptionPubsubV1beta2Args {
  /// This value is the maximum time after a subscriber receives a message before the subscriber should acknowledge the message. After message delivery but before the ack deadline expires and before the message is acknowledged, it is an outstanding message and will not be delivered again during that time (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using pull. The maximum custom deadline you can specify is 600 seconds (10 minutes). For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message. If this parameter is 0, a default value of 10 seconds is used.
  final pulumi.Input<int>? ackDeadlineSeconds;
  /// The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// If push delivery is used with this subscription, this field is used to configure it. An empty `pushConfig` signifies that the subscriber will pull and ack messages using API methods.
  final pulumi.Input<PushConfigPubsubV1beta2>? pushConfig;
  final pulumi.Input<String> subscriptionId;
  /// The name of the topic from which this subscription is receiving messages. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  final pulumi.Input<String>? topic;

  /// Creates a new [SubscriptionPubsubV1beta2Args].
  /// [ackDeadlineSeconds] This value is the maximum time after a subscriber receives a message before the subscriber should acknowledge the message. After message delivery but before the ack deadline expires and before the message is acknowledged, it is an outstanding message and will not be delivered again during that time (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using pull. The maximum custom deadline you can specify is 600 seconds (10 minutes). For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message. If this parameter is 0, a default value of 10 seconds is used.
  /// [name] The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  /// [project] Optional.
  /// [pushConfig] If push delivery is used with this subscription, this field is used to configure it. An empty `pushConfig` signifies that the subscriber will pull and ack messages using API methods.
  /// [subscriptionId] Required.
  /// [topic] The name of the topic from which this subscription is receiving messages. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  SubscriptionPubsubV1beta2Args({
    this.ackDeadlineSeconds,
    this.name,
    this.project,
    this.pushConfig,
    required this.subscriptionId,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ?ackDeadlineSeconds,
      'name': ?name,
      'project': ?project,
      'pushConfig': ?pulumi.Input.mapOptionalInputValue<PushConfigPubsubV1beta2, Map<String, dynamic>>(pushConfig, (value) => value.toMap()),
      'subscriptionId': subscriptionId,
      'topic': ?topic,
    };
  }

  factory SubscriptionPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return SubscriptionPubsubV1beta2Args(
      ackDeadlineSeconds: map['ackDeadlineSeconds'] == null ? null : (map['ackDeadlineSeconds'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pushConfig: map['pushConfig'] == null ? null : (PushConfigPubsubV1beta2.fromMap((map['pushConfig'] as Map).cast<String, dynamic>())).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      topic: map['topic'] == null ? null : (map['topic'] as String).input(),
    );
  }
}

