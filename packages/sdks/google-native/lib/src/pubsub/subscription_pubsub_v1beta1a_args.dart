// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'push_config_pubsub_v1beta1a.dart';

/// {@template pulumi_pubsub_v1beta1a_subscription_pubsub_v1beta1a_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta1a_subscription_pubsub_v1beta1a_args_doc}
class SubscriptionPubsubV1beta1aArgs {
  /// For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed. For push delivery, this value is used to set the request timeout for the call to the push endpoint. For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for each message using its corresponding ack_id with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis).
  final pulumi.Input<int>? ackDeadlineSeconds;
  /// Name of the subscription.
  final pulumi.Input<String>? name;
  /// If push delivery is used with this subscription, this field is used to configure it.
  final pulumi.Input<PushConfigPubsubV1beta1a>? pushConfig;
  /// The name of the topic from which this subscription is receiving messages.
  final pulumi.Input<String>? topic;

  /// Creates a new [SubscriptionPubsubV1beta1aArgs].
  /// [ackDeadlineSeconds] For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed. For push delivery, this value is used to set the request timeout for the call to the push endpoint. For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for each message using its corresponding ack_id with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis).
  /// [name] Name of the subscription.
  /// [pushConfig] If push delivery is used with this subscription, this field is used to configure it.
  /// [topic] The name of the topic from which this subscription is receiving messages.
  const SubscriptionPubsubV1beta1aArgs({
    this.ackDeadlineSeconds,
    this.name,
    this.pushConfig,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ?ackDeadlineSeconds,
      'name': ?name,
      'pushConfig': ?pulumi.Input.mapOptionalInputValue<PushConfigPubsubV1beta1a, Map<String, dynamic>>(pushConfig, (value) => value.toMap()),
      'topic': ?topic,
    };
  }

  factory SubscriptionPubsubV1beta1aArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionPubsubV1beta1aArgs(
      ackDeadlineSeconds: (() { final guardedValue = map['ackDeadlineSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pushConfig: (() { final guardedValue = map['pushConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PushConfigPubsubV1beta1a.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

