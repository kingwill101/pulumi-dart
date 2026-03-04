// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_config_desired_state.dart';
import 'pub_sub_config.dart';

/// Configuration for a Pub/Sub Lite subscription that writes messages to a destination. User subscriber clients must not connect to this subscription.
class ExportConfig {
  /// Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  final pulumi.Input<String>? deadLetterTopic;

  /// The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  final pulumi.Input<ExportConfigDesiredState>? desiredState;

  /// Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  final pulumi.Input<PubSubConfig>? pubsubConfig;

  /// Creates a new [ExportConfig].
  /// [deadLetterTopic] Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  /// [desiredState] The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  /// [pubsubConfig] Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  ExportConfig({this.deadLetterTopic, this.desiredState, this.pubsubConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterTopic': ?deadLetterTopic,
      'desiredState':
          ?pulumi.Input.mapOptionalInputValue<ExportConfigDesiredState, String>(
            desiredState,
            (value) => value.wireValue,
          ),
      'pubsubConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PubSubConfig,
            Map<String, dynamic>
          >(pubsubConfig, (value) => value.toMap()),
    };
  }

  factory ExportConfig.fromMap(Map<String, dynamic> map) {
    return ExportConfig(
      deadLetterTopic: (() {
        final guardedValue = map['deadLetterTopic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      desiredState: (() {
        final guardedValue = map['desiredState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExportConfigDesiredState.fromValue(guardedValue as String),
        );
      })(),
      pubsubConfig: (() {
        final guardedValue = map['pubsubConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PubSubConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
