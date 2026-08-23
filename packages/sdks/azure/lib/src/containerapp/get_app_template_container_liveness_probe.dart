// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_container_liveness_probe_header.dart';

class GetAppTemplateContainerLivenessProbe {
  /// The number of consecutive failures required to consider this probe as failed.
  final pulumi.Input<int> failureCountThreshold;
  /// A `header` block as detailed below.
  final pulumi.Input<List<GetAppTemplateContainerLivenessProbeHeader>> headers;
  /// The value for the host header which should be sent with this probe.
  final pulumi.Input<String> host;
  /// The number of seconds elapsed after the container has started before the probe is initiated.
  final pulumi.Input<int> initialDelay;
  /// How often, in seconds, the probe should run.
  final pulumi.Input<int> intervalSeconds;
  /// The path in the container at which to mount this volume.
  final pulumi.Input<String> path;
  /// The port number on which to connect.
  final pulumi.Input<int> port;
  /// The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  final pulumi.Input<int> terminationGracePeriodSeconds;
  /// Time in seconds after which the probe times out.
  final pulumi.Input<int> timeout;
  /// The transport method for the Ingress.
  final pulumi.Input<String> transport;

  /// Creates a new [GetAppTemplateContainerLivenessProbe].
  /// [failureCountThreshold] The number of consecutive failures required to consider this probe as failed.
  /// [headers] A `header` block as detailed below.
  /// [host] The value for the host header which should be sent with this probe.
  /// [initialDelay] The number of seconds elapsed after the container has started before the probe is initiated.
  /// [intervalSeconds] How often, in seconds, the probe should run.
  /// [path] The path in the container at which to mount this volume.
  /// [port] The port number on which to connect.
  /// [terminationGracePeriodSeconds] The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  /// [timeout] Time in seconds after which the probe times out.
  /// [transport] The transport method for the Ingress.
  const GetAppTemplateContainerLivenessProbe({
    required this.failureCountThreshold,
    required this.headers,
    required this.host,
    required this.initialDelay,
    required this.intervalSeconds,
    required this.path,
    required this.port,
    required this.terminationGracePeriodSeconds,
    required this.timeout,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCountThreshold': failureCountThreshold,
      'headers': pulumi.Input.mapInputValue<List<GetAppTemplateContainerLivenessProbeHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetAppTemplateContainerLivenessProbeHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': host,
      'initialDelay': initialDelay,
      'intervalSeconds': intervalSeconds,
      'path': path,
      'port': port,
      'terminationGracePeriodSeconds': terminationGracePeriodSeconds,
      'timeout': timeout,
      'transport': transport,
    };
  }

  factory GetAppTemplateContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerLivenessProbe(
      failureCountThreshold: pulumi.Input.fromValue(map['failureCountThreshold'] as int),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppTemplateContainerLivenessProbeHeader>(map['headers']!, (value) => GetAppTemplateContainerLivenessProbeHeader.fromMap((value as Map).cast<String, dynamic>()))),
      host: pulumi.Input.fromValue(map['host'] as String),
      initialDelay: pulumi.Input.fromValue(map['initialDelay'] as int),
      intervalSeconds: pulumi.Input.fromValue(map['intervalSeconds'] as int),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      terminationGracePeriodSeconds: pulumi.Input.fromValue(map['terminationGracePeriodSeconds'] as int),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
      transport: pulumi.Input.fromValue(map['transport'] as String),
    );
  }
}
