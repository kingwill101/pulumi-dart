import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_pubsub_v1beta2_args.dart';

/// Creates the given topic with the given name.
class TopicPubsubV1beta2 extends pulumi.CustomResource {
  /// The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> topicId;

  /// Creates a new [TopicPubsubV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicPubsubV1beta2]. {@macro pulumi_pubsub_v1beta2_topic_pubsub_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicPubsubV1beta2(
    String name, {
    TopicPubsubV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1beta2:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['project', 'topicId']).merge(options),
        ) {
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    topicId = registerOutput<String>('topicId');
  }

  /// Creates a typed reference to an existing [TopicPubsubV1beta2] resource.
  TopicPubsubV1beta2.reference(String urn)
    : super(
        'google-native:pubsub/v1beta2:Topic',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    topicId = registerOutput<String>('topicId');
  }
}
