import 'package:pulumi/pulumi.dart' as pulumi;
import 'push_config_response_pubsub_v1beta1a.dart';
import 'subscription_pubsub_v1beta1a_args.dart';

/// Creates a subscription on a given topic for a given subscriber. If the subscription already exists, returns ALREADY_EXISTS. If the corresponding topic doesn't exist, returns NOT_FOUND. If the name is not provided in the request, the server will assign a random name for this subscription on the same project as the topic.
class SubscriptionPubsubV1beta1a extends pulumi.CustomResource {
  /// For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed. For push delivery, this value is used to set the request timeout for the call to the push endpoint. For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for each message using its corresponding ack_id with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis).
  late final pulumi.Output<int> ackDeadlineSeconds;
  /// Name of the subscription.
  late final pulumi.Output<String> name;
  /// If push delivery is used with this subscription, this field is used to configure it.
  late final pulumi.Output<PushConfigResponsePubsubV1beta1a> pushConfig;
  /// The name of the topic from which this subscription is receiving messages.
  late final pulumi.Output<String> topic;

  /// Creates a new [SubscriptionPubsubV1beta1a].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionPubsubV1beta1a]. {@macro pulumi_pubsub_v1beta1a_subscription_pubsub_v1beta1a_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionPubsubV1beta1a(
    String name, {
    SubscriptionPubsubV1beta1aArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1beta1a:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    this.name = registerOutput<String>('name');
    this.pushConfig = registerOutput<PushConfigResponsePubsubV1beta1a>('pushConfig');
    this.topic = registerOutput<String>('topic');
  }
}
