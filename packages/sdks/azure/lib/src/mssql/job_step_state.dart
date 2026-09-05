// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_step_output_target.dart';

/// Input properties used for looking up and filtering JobStep resources.
class JobStepState {
  /// The initial retry interval in seconds. Defaults to `1`.
  final pulumi.Input<int?>? initialRetryIntervalSeconds;
  /// The ID of the Elastic Job Credential to use when executing this Elastic Job Step. Omit this argument to run the step under the Job Agent's managed identity (user-assigned).
  ///
  /// &gt; **Note:** Once set, `jobCredentialId` cannot be removed. Removing the credential will force a new resource to be created.
  final pulumi.Input<String?>? jobCredentialId;
  /// The ID of the Elastic Job. Changing this forces a new Elastic Job Step to be created.
  final pulumi.Input<String?>? jobId;
  /// The index at which to insert this Elastic Job Step into the Elastic Job.
  ///
  /// &gt; **Note:** This value must be greater than or equal to 1 and less than or equal to the number of job steps in the Elastic Job.
  final pulumi.Input<int?>? jobStepIndex;
  /// The ID of the Elastic Job Target Group.
  final pulumi.Input<String?>? jobTargetGroupId;
  /// The maximum retry interval in seconds. Defaults to `120`.
  ///
  /// &gt; **Note:** `maximumRetryIntervalSeconds` must be greater than `initialRetryIntervalSeconds`.
  final pulumi.Input<int?>? maximumRetryIntervalSeconds;
  /// The name which should be used for this Elastic Job Step. Changing this forces a new Elastic Job Step to be created.
  final pulumi.Input<String?>? name;
  /// An `outputTarget` block as defined below.
  final pulumi.Input<JobStepOutputTarget?>? outputTarget;
  /// The number of retry attempts. Defaults to `10`.
  final pulumi.Input<int?>? retryAttempts;
  /// The multiplier for time between retries. Defaults to `2.0`.
  final pulumi.Input<double?>? retryIntervalBackoffMultiplier;
  /// The T-SQL script to be executed by this Elastic Job Step.
  ///
  /// &gt; **Note:** While Azure places no restrictions on the script provided here, it is recommended to ensure the script is idempotent.
  final pulumi.Input<String?>? sqlScript;
  /// The execution timeout in seconds for this Elastic Job Step. Defaults to `43200`.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [JobStepState].
  /// [initialRetryIntervalSeconds] The initial retry interval in seconds. Defaults to `1`.
  /// [jobCredentialId] The ID of the Elastic Job Credential to use when executing this Elastic Job Step. Omit this argument to run the step under the Job Agent's managed identity (user-assigned).
  /// [jobId] The ID of the Elastic Job. Changing this forces a new Elastic Job Step to be created.
  /// [jobStepIndex] The index at which to insert this Elastic Job Step into the Elastic Job.
  /// [jobTargetGroupId] The ID of the Elastic Job Target Group.
  /// [maximumRetryIntervalSeconds] The maximum retry interval in seconds. Defaults to `120`.
  /// [name] The name which should be used for this Elastic Job Step. Changing this forces a new Elastic Job Step to be created.
  /// [outputTarget] An `outputTarget` block as defined below.
  /// [retryAttempts] The number of retry attempts. Defaults to `10`.
  /// [retryIntervalBackoffMultiplier] The multiplier for time between retries. Defaults to `2.0`.
  /// [sqlScript] The T-SQL script to be executed by this Elastic Job Step.
  /// [timeoutSeconds] The execution timeout in seconds for this Elastic Job Step. Defaults to `43200`.
  const JobStepState({
    this.initialRetryIntervalSeconds,
    this.jobCredentialId,
    this.jobId,
    this.jobStepIndex,
    this.jobTargetGroupId,
    this.maximumRetryIntervalSeconds,
    this.name,
    this.outputTarget,
    this.retryAttempts,
    this.retryIntervalBackoffMultiplier,
    this.sqlScript,
    this.timeoutSeconds,
  });

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
      initialRetryIntervalSeconds: (() { final guardedValue = map['initialRetryIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      jobCredentialId: (() { final guardedValue = map['jobCredentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobStepIndex: (() { final guardedValue = map['jobStepIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      jobTargetGroupId: (() { final guardedValue = map['jobTargetGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumRetryIntervalSeconds: (() { final guardedValue = map['maximumRetryIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputTarget: (() { final guardedValue = map['outputTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobStepOutputTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryAttempts: (() { final guardedValue = map['retryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      retryIntervalBackoffMultiplier: (() { final guardedValue = map['retryIntervalBackoffMultiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sqlScript: (() { final guardedValue = map['sqlScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
