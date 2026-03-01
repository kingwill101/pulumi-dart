import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_pubsub_v1beta1a_args.dart';

/// Creates the given topic with the given name.
class TopicPubsubV1beta1a extends pulumi.CustomResource {
  /// Name of the topic.
  late final pulumi.Output<String> name;

  /// Creates a new [TopicPubsubV1beta1a].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicPubsubV1beta1a]. {@macro pulumi_pubsub_v1beta1a_topic_pubsub_v1beta1a_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicPubsubV1beta1a(
    String name, {
    TopicPubsubV1beta1aArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1beta1a:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
  }
}
