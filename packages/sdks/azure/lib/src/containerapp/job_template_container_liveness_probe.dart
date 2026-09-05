// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_container_liveness_probe_header.dart';

class JobTemplateContainerLivenessProbe {
  /// The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `30`. Defaults to `3`.
  final pulumi.Input<int?>? failureCountThreshold;
  /// A `header` block as detailed below.
  final pulumi.Input<List<JobTemplateContainerLivenessProbeHeader>?>? headers;
  /// The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `HTTP` and `HTTPS` type probes.
  final pulumi.Input<String?>? host;
  /// The time in seconds to wait after the container has started before the probe is started.
  final pulumi.Input<int?>? initialDelay;
  /// How often, in seconds, the probe should run. Possible values are in the range `1` - `240`. Defaults to `10`.
  final pulumi.Input<int?>? intervalSeconds;
  /// The URI to use with the `host` for http type probes. Not valid for `TCP` type probes. Defaults to `/`.
  final pulumi.Input<String?>? path;
  /// The port number on which to connect. Possible values are between `1` and `65535`.
  final pulumi.Input<int> port;
  /// The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  final pulumi.Input<int?>? terminationGracePeriodSeconds;
  /// Time in seconds after which the probe times out. Possible values are in the range `1` - `240`. Defaults to `1`.
  final pulumi.Input<int?>? timeout;
  /// Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
  final pulumi.Input<String> transport;

  /// Creates a new [JobTemplateContainerLivenessProbe].
  /// [failureCountThreshold] The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `30`. Defaults to `3`.
  /// [headers] A `header` block as detailed below.
  /// [host] The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `HTTP` and `HTTPS` type probes.
  /// [initialDelay] The time in seconds to wait after the container has started before the probe is started.
  /// [intervalSeconds] How often, in seconds, the probe should run. Possible values are in the range `1` - `240`. Defaults to `10`.
  /// [path] The URI to use with the `host` for http type probes. Not valid for `TCP` type probes. Defaults to `/`.
  /// [port] The port number on which to connect. Possible values are between `1` and `65535`.
  /// [terminationGracePeriodSeconds] The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  /// [timeout] Time in seconds after which the probe times out. Possible values are in the range `1` - `240`. Defaults to `1`.
  /// [transport] Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
  const JobTemplateContainerLivenessProbe({
    this.failureCountThreshold,
    this.headers,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.terminationGracePeriodSeconds,
    this.timeout,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCountThreshold': ?failureCountThreshold,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateContainerLivenessProbeHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<JobTemplateContainerLivenessProbeHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': ?host,
      'initialDelay': ?initialDelay,
      'intervalSeconds': ?intervalSeconds,
      'path': ?path,
      'port': port,
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'timeout': ?timeout,
      'transport': transport,
    };
  }

  factory JobTemplateContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return JobTemplateContainerLivenessProbe(
      failureCountThreshold: (() { final guardedValue = map['failureCountThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobTemplateContainerLivenessProbeHeader>(guardedValue, (value) => JobTemplateContainerLivenessProbeHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialDelay: (() { final guardedValue = map['initialDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      terminationGracePeriodSeconds: (() { final guardedValue = map['terminationGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      transport: pulumi.Input.fromValue(map['transport'] as String),
    );
  }
}
