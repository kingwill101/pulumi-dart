// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiCustomJobJobSpecScheduling {
  /// Indicates if the job should retry for internal errors after the job starts running.
  final pulumi.Input<bool?>? disableRetries;
  /// The maximum duration that a job will wait for the requested resources to be provisioned if the scheduling strategy is set to FLEX_START.
  final pulumi.Input<String?>? maxWaitDuration;
  /// Restarts the entire CustomJob if a worker gets restarted.
  final pulumi.Input<bool?>? restartJobOnWorkerRestart;
  /// This determines which type of scheduling strategy to use. Possible values: ["STANDARD", "SPOT", "FLEX_START"]
  final pulumi.Input<String?>? strategy;
  /// The maximum job running time. The default is 7 days. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String?>? timeout;

  /// Creates a new [AiCustomJobJobSpecScheduling].
  /// [disableRetries] Indicates if the job should retry for internal errors after the job starts running.
  /// [maxWaitDuration] The maximum duration that a job will wait for the requested resources to be provisioned if the scheduling strategy is set to FLEX_START.
  /// [restartJobOnWorkerRestart] Restarts the entire CustomJob if a worker gets restarted.
  /// [strategy] This determines which type of scheduling strategy to use. Possible values: ["STANDARD", "SPOT", "FLEX_START"]
  /// [timeout] The maximum job running time. The default is 7 days. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  const AiCustomJobJobSpecScheduling({
    this.disableRetries,
    this.maxWaitDuration,
    this.restartJobOnWorkerRestart,
    this.strategy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableRetries': ?disableRetries,
      'maxWaitDuration': ?maxWaitDuration,
      'restartJobOnWorkerRestart': ?restartJobOnWorkerRestart,
      'strategy': ?strategy,
      'timeout': ?timeout,
    };
  }

  factory AiCustomJobJobSpecScheduling.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecScheduling(
      disableRetries: (() { final guardedValue = map['disableRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxWaitDuration: (() { final guardedValue = map['maxWaitDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restartJobOnWorkerRestart: (() { final guardedValue = map['restartJobOnWorkerRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
