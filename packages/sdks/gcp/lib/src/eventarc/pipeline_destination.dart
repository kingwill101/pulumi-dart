// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_destination_authentication_config.dart';
import 'pipeline_destination_http_endpoint.dart';
import 'pipeline_destination_network_config.dart';
import 'pipeline_destination_output_payload_format.dart';

class PipelineDestination {
  /// Represents a config used to authenticate message requests.
  /// Structure is documented below.
  final pulumi.Input<PipelineDestinationAuthenticationConfig>? authenticationConfig;
  /// Represents a HTTP endpoint destination.
  /// Structure is documented below.
  final pulumi.Input<PipelineDestinationHttpEndpoint>? httpEndpoint;
  /// The resource name of the Message Bus to which events should be
  /// published. The Message Bus resource should exist in the same project as
  /// the Pipeline. Format:
  /// `projects/{project}/locations/{location}/messageBuses/{message_bus}`
  final pulumi.Input<String>? messageBus;
  /// Represents a network config to be used for destination resolution and
  /// connectivity.
  /// Structure is documented below.
  final pulumi.Input<PipelineDestinationNetworkConfig>? networkConfig;
  /// Represents the format of message data.
  /// Structure is documented below.
  final pulumi.Input<PipelineDestinationOutputPayloadFormat>? outputPayloadFormat;
  /// The resource name of the Pub/Sub topic to which events should be
  /// published. Format:
  /// `projects/{project}/locations/{location}/topics/{topic}`
  final pulumi.Input<String>? topic;
  /// The resource name of the Workflow whose Executions are triggered by
  /// the events. The Workflow resource should be deployed in the same
  /// project as the Pipeline. Format:
  /// `projects/{project}/locations/{location}/workflows/{workflow}`
  final pulumi.Input<String>? workflow;

  /// Creates a new [PipelineDestination].
  /// [authenticationConfig] Represents a config used to authenticate message requests.
  /// [httpEndpoint] Represents a HTTP endpoint destination.
  /// [messageBus] The resource name of the Message Bus to which events should be
  /// [networkConfig] Represents a network config to be used for destination resolution and
  /// [outputPayloadFormat] Represents the format of message data.
  /// [topic] The resource name of the Pub/Sub topic to which events should be
  /// [workflow] The resource name of the Workflow whose Executions are triggered by
  const PipelineDestination({
    this.authenticationConfig,
    this.httpEndpoint,
    this.messageBus,
    this.networkConfig,
    this.outputPayloadFormat,
    this.topic,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationConfig': ?pulumi.Input.mapOptionalInputValue<PipelineDestinationAuthenticationConfig, Map<String, dynamic>>(authenticationConfig, (value) => value.toMap()),
      'httpEndpoint': ?pulumi.Input.mapOptionalInputValue<PipelineDestinationHttpEndpoint, Map<String, dynamic>>(httpEndpoint, (value) => value.toMap()),
      'messageBus': ?messageBus,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<PipelineDestinationNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'outputPayloadFormat': ?pulumi.Input.mapOptionalInputValue<PipelineDestinationOutputPayloadFormat, Map<String, dynamic>>(outputPayloadFormat, (value) => value.toMap()),
      'topic': ?topic,
      'workflow': ?workflow,
    };
  }

  factory PipelineDestination.fromMap(Map<String, dynamic> map) {
    return PipelineDestination(
      authenticationConfig: (() { final guardedValue = map['authenticationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineDestinationAuthenticationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpEndpoint: (() { final guardedValue = map['httpEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineDestinationHttpEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      messageBus: (() { final guardedValue = map['messageBus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineDestinationNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputPayloadFormat: (() { final guardedValue = map['outputPayloadFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineDestinationOutputPayloadFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflow: (() { final guardedValue = map['workflow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

