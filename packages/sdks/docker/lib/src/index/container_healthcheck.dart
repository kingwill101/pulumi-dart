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
  /// Command to run to check health. For example, to run `curl -f localhost/health` set the command to be `["CMD", "curl", "-f", "localhost/health"]`.
  final pulumi.Input<List<String>> tests;
  /// Maximum time to allow one check to run (ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ContainerHealthcheck].
  /// [interval] Time between running the check (ms|s|m|h). Defaults to `0s`.
  /// [retries] Consecutive failures needed to report unhealthy. Defaults to `0`.
  /// [startInterval] Interval before the healthcheck starts (ms|s|m|h). Defaults to `0s`.
  /// [startPeriod] Start period for the container to initialize before counting retries towards unstable (ms|s|m|h). Defaults to `0s`.
  /// [tests] Command to run to check health. For example, to run `curl -f localhost/health` set the command to be `["CMD", "curl", "-f", "localhost/health"]`.
  /// [timeout] Maximum time to allow one check to run (ms|s|m|h). Defaults to `0s`.
  ContainerHealthcheck({
    this.interval,
    this.retries,
    this.startInterval,
    this.startPeriod,
    required this.tests,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'retries': ?retries,
      'startInterval': ?startInterval,
      'startPeriod': ?startPeriod,
      'tests': tests,
      'timeout': ?timeout,
    };
  }

  factory ContainerHealthcheck.fromMap(Map<String, dynamic> map) {
    return ContainerHealthcheck(
      interval: map['interval'] == null ? null : (map['interval']! as String).input(),
      retries: map['retries'] == null ? null : (map['retries']! as int).input(),
      startInterval: map['startInterval'] == null ? null : (map['startInterval']! as String).input(),
      startPeriod: map['startPeriod'] == null ? null : (map['startPeriod']! as String).input(),
      tests: ((map['tests'] as List).cast<String>()).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

