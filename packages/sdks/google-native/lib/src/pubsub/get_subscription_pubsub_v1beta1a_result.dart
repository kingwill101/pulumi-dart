// ignore_for_file: unused_element, unnecessary_cast

import 'push_config_response_pubsub_v1beta1a.dart';

/// Result data returned by getSubscription.
class GetSubscriptionPubsubV1beta1aResult {
  /// For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed. For push delivery, this value is used to set the request timeout for the call to the push endpoint. For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for each message using its corresponding ack_id with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis).
  final int? ackDeadlineSeconds;
  /// Name of the subscription.
  final String? name;
  /// If push delivery is used with this subscription, this field is used to configure it.
  final PushConfigResponsePubsubV1beta1a? pushConfig;
  /// The name of the topic from which this subscription is receiving messages.
  final String? topic;

  /// Creates a new [GetSubscriptionPubsubV1beta1aResult].
  /// [ackDeadlineSeconds] For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed. For push delivery, this value is used to set the request timeout for the call to the push endpoint. For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for each message using its corresponding ack_id with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis).
  /// [name] Name of the subscription.
  /// [pushConfig] If push delivery is used with this subscription, this field is used to configure it.
  /// [topic] The name of the topic from which this subscription is receiving messages.
  const GetSubscriptionPubsubV1beta1aResult({
    this.ackDeadlineSeconds,
    this.name,
    this.pushConfig,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ?ackDeadlineSeconds,
      'name': ?name,
      'pushConfig': ?pushConfig?.toMap(),
      'topic': ?topic,
    };
  }

  factory GetSubscriptionPubsubV1beta1aResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubV1beta1aResult(
      ackDeadlineSeconds: (() { final guardedValue = map['ackDeadlineSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pushConfig: (() { final guardedValue = map['pushConfig']; if (guardedValue == null) return null; return PushConfigResponsePubsubV1beta1a.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
