// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution related settings, like retry and service_account.
class GoogleCloudDataplexV1TaskExecutionSpec {
  /// Optional. The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${task_id} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument.
  final pulumi.Input<Map<String, String>>? args;
  /// Optional. The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{location_id}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.
  final pulumi.Input<String>? kmsKey;
  /// Optional. The maximum duration after which the job execution is expired.
  final pulumi.Input<String>? maxJobExecutionLifetime;
  /// Optional. The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project.
  final pulumi.Input<String>? project;
  /// Service account to use to execute a task. If not provided, the default Compute service account for the project is used.
  final pulumi.Input<String> serviceAccount;

  /// Creates a new [GoogleCloudDataplexV1TaskExecutionSpec].
  /// [args] Optional. The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${task_id} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument.
  /// [kmsKey] Optional. The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{location_id}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.
  /// [maxJobExecutionLifetime] Optional. The maximum duration after which the job execution is expired.
  /// [project] Optional. The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project.
  /// [serviceAccount] Service account to use to execute a task. If not provided, the default Compute service account for the project is used.
  GoogleCloudDataplexV1TaskExecutionSpec({
    this.args,
    this.kmsKey,
    this.maxJobExecutionLifetime,
    this.project,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'kmsKey': ?kmsKey,
      'maxJobExecutionLifetime': ?maxJobExecutionLifetime,
      'project': ?project,
      'serviceAccount': serviceAccount,
    };
  }

  factory GoogleCloudDataplexV1TaskExecutionSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskExecutionSpec(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxJobExecutionLifetime: (() { final guardedValue = map['maxJobExecutionLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
    );
  }
}

