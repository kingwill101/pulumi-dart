// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes settings to use when generating API methods that use the long-running operation pattern. All default values below are from those used in the client library generators (e.g. [Java](https://github.com/googleapis/gapic-generator-java/blob/04c2faa191a9b5a10b92392fe8482279c4404803/src/main/java/com/google/api/generator/gapic/composer/common/RetrySettingsComposer.java)).
class LongRunning {
  /// Initial delay after which the first poll request will be made. Default value: 5 seconds.
  final pulumi.Input<String>? initialPollDelay;
  /// Maximum time between two subsequent poll requests. Default value: 45 seconds.
  final pulumi.Input<String>? maxPollDelay;
  /// Multiplier to gradually increase delay between subsequent polls until it reaches max_poll_delay. Default value: 1.5.
  final pulumi.Input<double>? pollDelayMultiplier;
  /// Total polling timeout. Default value: 5 minutes.
  final pulumi.Input<String>? totalPollTimeout;

  /// Creates a new [LongRunning].
  /// [initialPollDelay] Initial delay after which the first poll request will be made. Default value: 5 seconds.
  /// [maxPollDelay] Maximum time between two subsequent poll requests. Default value: 45 seconds.
  /// [pollDelayMultiplier] Multiplier to gradually increase delay between subsequent polls until it reaches max_poll_delay. Default value: 1.5.
  /// [totalPollTimeout] Total polling timeout. Default value: 5 minutes.
  LongRunning({
    this.initialPollDelay,
    this.maxPollDelay,
    this.pollDelayMultiplier,
    this.totalPollTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialPollDelay': ?initialPollDelay,
      'maxPollDelay': ?maxPollDelay,
      'pollDelayMultiplier': ?pollDelayMultiplier,
      'totalPollTimeout': ?totalPollTimeout,
    };
  }

  factory LongRunning.fromMap(Map<String, dynamic> map) {
    return LongRunning(
      initialPollDelay: (() { final guardedValue = map['initialPollDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxPollDelay: (() { final guardedValue = map['maxPollDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pollDelayMultiplier: (() { final guardedValue = map['pollDelayMultiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalPollTimeout: (() { final guardedValue = map['totalPollTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

