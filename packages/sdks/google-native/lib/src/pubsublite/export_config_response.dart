// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pub_sub_config_response.dart';

/// Configuration for a Pub/Sub Lite subscription that writes messages to a destination. User subscriber clients must not connect to this subscription.
class ExportConfigResponse {
  /// The current state of the export, which may be different to the desired state due to errors. This field is output only.
  final pulumi.Input<String> currentState;
  /// Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  final pulumi.Input<String> deadLetterTopic;
  /// The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  final pulumi.Input<String> desiredState;
  /// Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  final pulumi.Input<PubSubConfigResponse> pubsubConfig;

  /// Creates a new [ExportConfigResponse].
  /// [currentState] The current state of the export, which may be different to the desired state due to errors. This field is output only.
  /// [deadLetterTopic] Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  /// [desiredState] The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  /// [pubsubConfig] Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  const ExportConfigResponse({
    required this.currentState,
    required this.deadLetterTopic,
    required this.desiredState,
    required this.pubsubConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentState': currentState,
      'deadLetterTopic': deadLetterTopic,
      'desiredState': desiredState,
      'pubsubConfig': pulumi.Input.mapInputValue<PubSubConfigResponse, Map<String, dynamic>>(pubsubConfig, (value) => value.toMap()),
    };
  }

  factory ExportConfigResponse.fromMap(Map<String, dynamic> map) {
    return ExportConfigResponse(
      currentState: pulumi.Input.fromValue(map['currentState'] as String),
      deadLetterTopic: pulumi.Input.fromValue(map['deadLetterTopic'] as String),
      desiredState: pulumi.Input.fromValue(map['desiredState'] as String),
      pubsubConfig: pulumi.Input.fromValue(PubSubConfigResponse.fromMap((map['pubsubConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
