// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pubsub_config_state.dart';

/// PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub/Sub message is published.
class PubsubConfig {
  /// Service account that will make the push request.
  final pulumi.Input<String>? serviceAccountEmail;
  /// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  final pulumi.Input<PubsubConfigState>? state;
  /// The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`.
  final pulumi.Input<String>? topic;

  /// Creates a new [PubsubConfig].
  /// [serviceAccountEmail] Service account that will make the push request.
  /// [state] Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  /// [topic] The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`.
  const PubsubConfig({
    this.serviceAccountEmail,
    this.state,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmail': ?serviceAccountEmail,
      'state': ?pulumi.Input.mapOptionalInputValue<PubsubConfigState, String>(state, (value) => value.wireValue),
      'topic': ?topic,
    };
  }

  factory PubsubConfig.fromMap(Map<String, dynamic> map) {
    return PubsubConfig(
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PubsubConfigState.fromValue(guardedValue as String)); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

