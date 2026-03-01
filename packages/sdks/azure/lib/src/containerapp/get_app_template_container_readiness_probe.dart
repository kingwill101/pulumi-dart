// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_container_readiness_probe_header.dart';

class GetAppTemplateContainerReadinessProbe {
  /// The number of consecutive failures required to consider this probe as failed.
  final int failureCountThreshold;
  /// A `header` block as detailed below.
  final List<GetAppTemplateContainerReadinessProbeHeader> headers;
  /// The value for the host header which should be sent with this probe.
  final String host;
  /// The number of seconds elapsed after the container has started before the probe is initiated.
  final int initialDelay;
  /// How often, in seconds, the probe should run.
  final int intervalSeconds;
  /// The path in the container at which to mount this volume.
  final String path;
  /// The port number on which to connect.
  final int port;
  /// The number of consecutive successful responses required to consider this probe as successful.
  final int successCountThreshold;
  /// Time in seconds after which the probe times out.
  final int timeout;
  /// The transport method for the Ingress.
  final String transport;

  /// Creates a new [GetAppTemplateContainerReadinessProbe].
  /// [failureCountThreshold] The number of consecutive failures required to consider this probe as failed.
  /// [headers] A `header` block as detailed below.
  /// [host] The value for the host header which should be sent with this probe.
  /// [initialDelay] The number of seconds elapsed after the container has started before the probe is initiated.
  /// [intervalSeconds] How often, in seconds, the probe should run.
  /// [path] The path in the container at which to mount this volume.
  /// [port] The port number on which to connect.
  /// [successCountThreshold] The number of consecutive successful responses required to consider this probe as successful.
  /// [timeout] Time in seconds after which the probe times out.
  /// [transport] The transport method for the Ingress.
  GetAppTemplateContainerReadinessProbe({
    required this.failureCountThreshold,
    required this.headers,
    required this.host,
    required this.initialDelay,
    required this.intervalSeconds,
    required this.path,
    required this.port,
    required this.successCountThreshold,
    required this.timeout,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCountThreshold': failureCountThreshold,
      'headers': pulumi.Input.encodeList<GetAppTemplateContainerReadinessProbeHeader, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'host': host,
      'initialDelay': initialDelay,
      'intervalSeconds': intervalSeconds,
      'path': path,
      'port': port,
      'successCountThreshold': successCountThreshold,
      'timeout': timeout,
      'transport': transport,
    };
  }

  factory GetAppTemplateContainerReadinessProbe.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerReadinessProbe(
      failureCountThreshold: map['failureCountThreshold'] as int,
      headers: pulumi.Input.decodeList<GetAppTemplateContainerReadinessProbeHeader>(map['headers'], (value) => GetAppTemplateContainerReadinessProbeHeader.fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      initialDelay: map['initialDelay'] as int,
      intervalSeconds: map['intervalSeconds'] as int,
      path: map['path'] as String,
      port: map['port'] as int,
      successCountThreshold: map['successCountThreshold'] as int,
      timeout: map['timeout'] as int,
      transport: map['transport'] as String,
    );
  }
}

