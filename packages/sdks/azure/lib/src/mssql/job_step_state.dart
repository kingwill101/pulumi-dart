// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_step_output_target.dart';

/// Input properties used for looking up and filtering JobStep resources.
class JobStepState {
  /// The initial retry interval in seconds. Defaults to `1`.
  final pulumi.Input<int>? initialRetryIntervalSeconds;
  /// The ID of the Elastic Job Credential to use when executing this Elastic Job Step. Omit this argument to run the step under the Job Agent's managed identity (user-assigned).
  ///
  /// !> **Note:** Once set, `job_credential_id` cannot be removed. Removing the credential will force a new resource to be created.
  final pulumi.Input<String>? jobCredentialId;
  /// The ID of the Elastic Job. Changing this forces a new Elastic Job Step to be created.
  final pulumi.Input<String>? jobId;
  /// The index at which to insert this Elastic Job Step into the Elastic Job.
  ///
  /// > **Note:** This value must be greater than or equal to 1 and less than or equal to the number of job steps in the Elastic Job.
  final pulumi.Input<int>? jobStepIndex;
  /// The ID of the Elastic Job Target Group.
  final pulumi.Input<String>? jobTargetGroupId;
  /// The maximum retry interval in seconds. Defaults to `120`.
  ///
  /// > **Note:** `maximum_retry_interval_seconds` must be greater than `initial_retry_interval_seconds`.
  final pulumi.Input<int>? maximumRetryIntervalSeconds;
  /// The name which should be used for this Elastic Job Step. Changing this forces a new Elastic Job Step to be created.
  final pulumi.Input<String>? name;
  /// An `output_target` block as defined below.
  final pulumi.Input<JobStepOutputTarget>? outputTarget;
  /// The number of retry attempts. Defaults to `10`.
  final pulumi.Input<int>? retryAttempts;
  /// The multiplier for time between retries. Defaults to `2.0`.
  final pulumi.Input<double>? retryIntervalBackoffMultiplier;
  /// The T-SQL script to be executed by this Elastic Job Step.
  ///
  /// > **Note:** While Azure places no restrictions on the script provided here, it is recommended to ensure the script is idempotent.
  final pulumi.Input<String>? sqlScript;
  /// The execution timeout in seconds for this Elastic Job Step. Defaults to `43200`.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [JobStepState].
  /// [initialRetryIntervalSeconds] The initial retry interval in seconds. Defaults to `1`.
  /// [jobCredentialId] The ID of the Elastic Job Credential to use when executing this Elastic Job Step. Omit this argument to run the step under the Job Agent's managed identity (user-assigned).
  /// [jobId] The ID of the Elastic Job. Changing this forces a new Elastic Job Step to be created.
  /// [jobStepIndex] The index at which to insert this Elastic Job Step into the Elastic Job.
  /// [jobTargetGroupId] The ID of the Elastic Job Target Group.
  /// [maximumRetryIntervalSeconds] The maximum retry interval in seconds. Defaults to `120`.
  /// [name] The name which should be used for this Elastic Job Step. Changing this forces a new Elastic Job Step to be created.
  /// [outputTarget] An `output_target` block as defined below.
  /// [retryAttempts] The number of retry attempts. Defaults to `10`.
  /// [retryIntervalBackoffMultiplier] The multiplier for time between retries. Defaults to `2.0`.
  /// [sqlScript] The T-SQL script to be executed by this Elastic Job Step.
  /// [timeoutSeconds] The execution timeout in seconds for this Elastic Job Step. Defaults to `43200`.
  JobStepState({
    pulumi.Output<int>? initialRetryIntervalSeconds,
    pulumi.Output<String>? jobCredentialId,
    pulumi.Output<String>? jobId,
    pulumi.Output<int>? jobStepIndex,
    pulumi.Output<String>? jobTargetGroupId,
    pulumi.Output<int>? maximumRetryIntervalSeconds,
    pulumi.Output<String>? name,
    pulumi.Output<JobStepOutputTarget>? outputTarget,
    pulumi.Output<int>? retryAttempts,
    pulumi.Output<double>? retryIntervalBackoffMultiplier,
    pulumi.Output<String>? sqlScript,
    pulumi.Output<int>? timeoutSeconds,
  }) :
      initialRetryIntervalSeconds = pulumi.Input.asOptionalInput<int>(initialRetryIntervalSeconds),
      jobCredentialId = pulumi.Input.asOptionalInput<String>(jobCredentialId),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      jobStepIndex = pulumi.Input.asOptionalInput<int>(jobStepIndex),
      jobTargetGroupId = pulumi.Input.asOptionalInput<String>(jobTargetGroupId),
      maximumRetryIntervalSeconds = pulumi.Input.asOptionalInput<int>(maximumRetryIntervalSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputTarget = pulumi.Input.asOptionalInput<JobStepOutputTarget>(outputTarget),
      retryAttempts = pulumi.Input.asOptionalInput<int>(retryAttempts),
      retryIntervalBackoffMultiplier = pulumi.Input.asOptionalInput<double>(retryIntervalBackoffMultiplier),
      sqlScript = pulumi.Input.asOptionalInput<String>(sqlScript),
      timeoutSeconds = pulumi.Input.asOptionalInput<int>(timeoutSeconds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialRetryIntervalSeconds': ?initialRetryIntervalSeconds,
      'jobCredentialId': ?jobCredentialId,
      'jobId': ?jobId,
      'jobStepIndex': ?jobStepIndex,
      'jobTargetGroupId': ?jobTargetGroupId,
      'maximumRetryIntervalSeconds': ?maximumRetryIntervalSeconds,
      'name': ?name,
      'outputTarget': ?pulumi.Input.mapOptionalInputValue<JobStepOutputTarget, Map<String, dynamic>>(outputTarget, (value) => value.toMap()),
      'retryAttempts': ?retryAttempts,
      'retryIntervalBackoffMultiplier': ?retryIntervalBackoffMultiplier,
      'sqlScript': ?sqlScript,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory JobStepState.fromMap(Map<String, dynamic> map) {
    return JobStepState(
      initialRetryIntervalSeconds: map['initialRetryIntervalSeconds'] == null ? null : pulumi.Output.create<int>(map['initialRetryIntervalSeconds'] as int),
      jobCredentialId: map['jobCredentialId'] == null ? null : pulumi.Output.create<String>(map['jobCredentialId'] as String),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      jobStepIndex: map['jobStepIndex'] == null ? null : pulumi.Output.create<int>(map['jobStepIndex'] as int),
      jobTargetGroupId: map['jobTargetGroupId'] == null ? null : pulumi.Output.create<String>(map['jobTargetGroupId'] as String),
      maximumRetryIntervalSeconds: map['maximumRetryIntervalSeconds'] == null ? null : pulumi.Output.create<int>(map['maximumRetryIntervalSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputTarget: map['outputTarget'] == null ? null : pulumi.Output.create<JobStepOutputTarget>(JobStepOutputTarget.fromMap((map['outputTarget'] as Map).cast<String, dynamic>())),
      retryAttempts: map['retryAttempts'] == null ? null : pulumi.Output.create<int>(map['retryAttempts'] as int),
      retryIntervalBackoffMultiplier: map['retryIntervalBackoffMultiplier'] == null ? null : pulumi.Output.create<double>(map['retryIntervalBackoffMultiplier'] as double),
      sqlScript: map['sqlScript'] == null ? null : pulumi.Output.create<String>(map['sqlScript'] as String),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['timeoutSeconds'] as int),
    );
  }
}

