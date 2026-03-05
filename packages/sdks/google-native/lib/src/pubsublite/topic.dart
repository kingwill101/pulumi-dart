import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_config_response.dart';
import 'reservation_config_response.dart';
import 'retention_config_response.dart';
import 'topic_args.dart';

/// Creates a new topic.
class Topic extends pulumi.CustomResource {
  late final pulumi.Output<String> location;
  /// The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  late final pulumi.Output<String> name;
  /// The settings for this topic's partitions.
  late final pulumi.Output<PartitionConfigResponse> partitionConfig;
  late final pulumi.Output<String> project;
  /// The settings for this topic's Reservation usage.
  late final pulumi.Output<ReservationConfigResponse> reservationConfig;
  /// The settings for this topic's message retention.
  late final pulumi.Output<RetentionConfigResponse> retentionConfig;
  /// Required. The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  late final pulumi.Output<String> topicId;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_pubsublite_v1_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsublite/v1:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partitionConfig = registerOutput<PartitionConfigResponse>('partitionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PartitionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    reservationConfig = registerOutput<ReservationConfigResponse>('reservationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReservationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retentionConfig = registerOutput<RetentionConfigResponse>('retentionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RetentionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topicId = registerOutput<String>('topicId');
  }
}
