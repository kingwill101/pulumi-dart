// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerHealthcheck {
  /// Time between running the check (ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? interval;
  /// Consecutive failures needed to report unhealthy. Defaults to `0`.
  final pulumi.Input<int>? retries;
  /// Interval before the healthcheck starts (ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? startInterval;
  /// Start period for the container to initialize before counting retries towards unstable (ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? startPeriod;
  /// Command to run to check health. For example, to run `curl -f localhost/health` set the command to be `["CMD", "curl", "-f", "localhost/health"]`. It works in the same way, and has the same default values, as the HEALTHCHECK Dockerfile instruction set by the service's Docker image. Your Compose file can override the values set in the Dockerfile.
  final pulumi.Input<List<String>>? tests;
  /// Maximum time to allow one check to run (ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ContainerHealthcheck].
  /// [interval] Time between running the check (ms|s|m|h). Defaults to `0s`.
  /// [retries] Consecutive failures needed to report unhealthy. Defaults to `0`.
  /// [startInterval] Interval before the healthcheck starts (ms|s|m|h). Defaults to `0s`.
  /// [startPeriod] Start period for the container to initialize before counting retries towards unstable (ms|s|m|h). Defaults to `0s`.
  /// [tests] Command to run to check health. For example, to run `curl -f localhost/health` set the command to be `["CMD", "curl", "-f", "localhost/health"]`. It works in the same way, and has the same default values, as the HEALTHCHECK Dockerfile instruction set by the service's Docker image. Your Compose file can override the values set in the Dockerfile.
  /// [timeout] Maximum time to allow one check to run (ms|s|m|h). Defaults to `0s`.
  const ContainerHealthcheck({
    this.interval,
    this.retries,
    this.startInterval,
    this.startPeriod,
    this.tests,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'retries': ?retries,
      'startInterval': ?startInterval,
      'startPeriod': ?startPeriod,
      'tests': ?tests,
      'timeout': ?timeout,
    };
  }

  factory ContainerHealthcheck.fromMap(Map<String, dynamic> map) {
    return ContainerHealthcheck(
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startInterval: (() { final guardedValue = map['startInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startPeriod: (() { final guardedValue = map['startPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tests: (() { final guardedValue = map['tests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
