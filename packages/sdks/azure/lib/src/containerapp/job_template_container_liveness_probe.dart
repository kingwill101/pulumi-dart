// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_container_liveness_probe_header.dart';

class JobTemplateContainerLivenessProbe {
  /// The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `10`. Defaults to `3`.
  final int? failureCountThreshold;
  /// A `header` block as detailed below.
  final List<JobTemplateContainerLivenessProbeHeader>? headers;
  /// The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `HTTP` and `HTTPS` type probes.
  final String? host;
  /// The time in seconds to wait after the container has started before the probe is started.
  final int? initialDelay;
  /// How often, in seconds, the probe should run. Possible values are in the range `1` - `240`. Defaults to `10`.
  final int? intervalSeconds;
  /// The URI to use with the `host` for http type probes. Not valid for `TCP` type probes. Defaults to `/`.
  final String? path;
  /// The port number on which to connect. Possible values are between `1` and `65535`.
  final int port;
  /// The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  final int? terminationGracePeriodSeconds;
  /// Time in seconds after which the probe times out. Possible values are in the range `1` - `240`. Defaults to `1`.
  final int? timeout;
  /// Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
  final String transport;

  /// Creates a new [JobTemplateContainerLivenessProbe].
  /// [failureCountThreshold] The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `10`. Defaults to `3`.
  /// [headers] A `header` block as detailed below.
  /// [host] The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `HTTP` and `HTTPS` type probes.
  /// [initialDelay] The time in seconds to wait after the container has started before the probe is started.
  /// [intervalSeconds] How often, in seconds, the probe should run. Possible values are in the range `1` - `240`. Defaults to `10`.
  /// [path] The URI to use with the `host` for http type probes. Not valid for `TCP` type probes. Defaults to `/`.
  /// [port] The port number on which to connect. Possible values are between `1` and `65535`.
  /// [terminationGracePeriodSeconds] The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  /// [timeout] Time in seconds after which the probe times out. Possible values are in the range `1` - `240`. Defaults to `1`.
  /// [transport] Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
  JobTemplateContainerLivenessProbe({
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
      'headers': ?headers == null ? null : pulumi.Input.encodeList<JobTemplateContainerLivenessProbeHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
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
      failureCountThreshold: map['failureCountThreshold'] == null ? null : map['failureCountThreshold'] as int,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<JobTemplateContainerLivenessProbeHeader>(map['headers'], (value) => JobTemplateContainerLivenessProbeHeader.fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] == null ? null : map['host'] as String,
      initialDelay: map['initialDelay'] == null ? null : map['initialDelay'] as int,
      intervalSeconds: map['intervalSeconds'] == null ? null : map['intervalSeconds'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] as int,
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      transport: map['transport'] as String,
    );
  }
}

