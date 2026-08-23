// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_container_readiness_probe_header.dart';

class JobTemplateContainerReadinessProbe {
  /// The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `48`. Defaults to `3`.
  final pulumi.Input<int>? failureCountThreshold;
  /// A `header` block as detailed below.
  final pulumi.Input<List<JobTemplateContainerReadinessProbeHeader>>? headers;
  /// The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `HTTP` and `HTTPS` type probes.
  final pulumi.Input<String>? host;
  /// The number of seconds elapsed after the container has started before the probe is initiated. Possible values are between `0` and `60`. Defaults to `0` seconds.
  final pulumi.Input<int>? initialDelay;
  /// How often, in seconds, the probe should run. Possible values are between `1` and `240`. Defaults to `10`
  final pulumi.Input<int>? intervalSeconds;
  /// The URI to use for http type probes. Not valid for `TCP` type probes. Defaults to `/`.
  final pulumi.Input<String>? path;
  /// The port number on which to connect. Possible values are between `1` and `65535`.
  final pulumi.Input<int> port;
  /// The number of consecutive successful responses required to consider this probe as successful. Possible values are between `1` and `10`. Defaults to `3`.
  final pulumi.Input<int>? successCountThreshold;
  /// Time in seconds after which the probe times out. Possible values are in the range `1` - `240`. Defaults to `1`.
  final pulumi.Input<int>? timeout;
  /// Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
  final pulumi.Input<String> transport;

  /// Creates a new [JobTemplateContainerReadinessProbe].
  /// [failureCountThreshold] The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `48`. Defaults to `3`.
  /// [headers] A `header` block as detailed below.
  /// [host] The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `HTTP` and `HTTPS` type probes.
  /// [initialDelay] The number of seconds elapsed after the container has started before the probe is initiated. Possible values are between `0` and `60`. Defaults to `0` seconds.
  /// [intervalSeconds] How often, in seconds, the probe should run. Possible values are between `1` and `240`. Defaults to `10`
  /// [path] The URI to use for http type probes. Not valid for `TCP` type probes. Defaults to `/`.
  /// [port] The port number on which to connect. Possible values are between `1` and `65535`.
  /// [successCountThreshold] The number of consecutive successful responses required to consider this probe as successful. Possible values are between `1` and `10`. Defaults to `3`.
  /// [timeout] Time in seconds after which the probe times out. Possible values are in the range `1` - `240`. Defaults to `1`.
  /// [transport] Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
  const JobTemplateContainerReadinessProbe({
    this.failureCountThreshold,
    this.headers,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.successCountThreshold,
    this.timeout,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCountThreshold': ?failureCountThreshold,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateContainerReadinessProbeHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<JobTemplateContainerReadinessProbeHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': ?host,
      'initialDelay': ?initialDelay,
      'intervalSeconds': ?intervalSeconds,
      'path': ?path,
      'port': port,
      'successCountThreshold': ?successCountThreshold,
      'timeout': ?timeout,
      'transport': transport,
    };
  }

  factory JobTemplateContainerReadinessProbe.fromMap(Map<String, dynamic> map) {
    return JobTemplateContainerReadinessProbe(
      failureCountThreshold: (() { final guardedValue = map['failureCountThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobTemplateContainerReadinessProbeHeader>(guardedValue, (value) => JobTemplateContainerReadinessProbeHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialDelay: (() { final guardedValue = map['initialDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      successCountThreshold: (() { final guardedValue = map['successCountThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      transport: pulumi.Input.fromValue(map['transport'] as String),
    );
  }
}
