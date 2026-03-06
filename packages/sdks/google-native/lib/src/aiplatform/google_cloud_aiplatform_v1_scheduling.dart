// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All parameters related to queuing and scheduling of custom jobs.
class GoogleCloudAiplatformV1Scheduling {
  /// Optional. Indicates if the job should retry for internal errors after the job starts running. If true, overrides `Scheduling.restart_job_on_worker_restart` to false.
  final pulumi.Input<bool>? disableRetries;
  /// Restarts the entire CustomJob if a worker gets restarted. This feature can be used by distributed training jobs that are not resilient to workers leaving and joining a job.
  final pulumi.Input<bool>? restartJobOnWorkerRestart;
  /// The maximum job running time. The default is 7 days.
  final pulumi.Input<String>? timeout;

  /// Creates a new [GoogleCloudAiplatformV1Scheduling].
  /// [disableRetries] Optional. Indicates if the job should retry for internal errors after the job starts running. If true, overrides `Scheduling.restart_job_on_worker_restart` to false.
  /// [restartJobOnWorkerRestart] Restarts the entire CustomJob if a worker gets restarted. This feature can be used by distributed training jobs that are not resilient to workers leaving and joining a job.
  /// [timeout] The maximum job running time. The default is 7 days.
  const GoogleCloudAiplatformV1Scheduling({
    this.disableRetries,
    this.restartJobOnWorkerRestart,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableRetries': ?disableRetries,
      'restartJobOnWorkerRestart': ?restartJobOnWorkerRestart,
      'timeout': ?timeout,
    };
  }

  factory GoogleCloudAiplatformV1Scheduling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Scheduling(
      disableRetries: (() { final guardedValue = map['disableRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restartJobOnWorkerRestart: (() { final guardedValue = map['restartJobOnWorkerRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

