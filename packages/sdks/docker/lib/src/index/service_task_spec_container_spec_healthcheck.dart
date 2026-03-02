// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecContainerSpecHealthcheck {
  /// Time between running the check (ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? interval;
  /// Consecutive failures needed to report unhealthy. Defaults to `0`
  final pulumi.Input<int>? retries;
  /// Start period for the container to initialize before counting retries towards unstable (ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? startPeriod;
  /// The test to perform as list
  final pulumi.Input<List<String>>? tests;
  /// Maximum time to allow one check to run (ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ServiceTaskSpecContainerSpecHealthcheck].
  /// [interval] Time between running the check (ms|s|m|h). Defaults to `0s`.
  /// [retries] Consecutive failures needed to report unhealthy. Defaults to `0`
  /// [startPeriod] Start period for the container to initialize before counting retries towards unstable (ms|s|m|h). Defaults to `0s`.
  /// [tests] The test to perform as list
  /// [timeout] Maximum time to allow one check to run (ms|s|m|h). Defaults to `0s`.
  ServiceTaskSpecContainerSpecHealthcheck({
    this.interval,
    this.retries,
    this.startPeriod,
    this.tests,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'retries': ?retries,
      'startPeriod': ?startPeriod,
      'tests': ?tests,
      'timeout': ?timeout,
    };
  }

  factory ServiceTaskSpecContainerSpecHealthcheck.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecHealthcheck(
      interval: map['interval'] == null ? null : (map['interval']! as String).input(),
      retries: map['retries'] == null ? null : (map['retries']! as int).input(),
      startPeriod: map['startPeriod'] == null ? null : (map['startPeriod']! as String).input(),
      tests: map['tests'] == null ? null : ((map['tests']! as List).cast<String>()).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

